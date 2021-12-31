pragma solidity ^0.6.6;
import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
import "@chainlink/contracts/src/v0.6/vendor/SafeMathChainlink.sol";
import "@chainlink/contracts/src/v0.6/VRFConsumerBase.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Lottery is VRFConsumerBase, Ownable {
    using SafeMathChainlink for uint256;
    
    AggregatorV3Interface internal ethUsdPriceFeed;
    uint8 public usdEntryFee;
    address payable[] public participants;
    address public recentWinner;
    enum STATE {OPEN, DRAWING, CLOSED}
    STATE public state;
    uint256 public fee;
    bytes32 keyHash;

    event requestedRandomness(bytes32 _requestId);

    constructor(address _ethUsdPriceFeed, uint8 _usdEntryFee, address _vrfCoordinator, address _link, bytes32 _keyHash)
    VRFConsumerBase(_vrfCoordinator, _link) public{
        state = STATE.CLOSED;
        ethUsdPriceFeed = AggregatorV3Interface(_ethUsdPriceFeed);
        usdEntryFee = _usdEntryFee; //$
        fee =  0.1 * 10 ** 18; // 0.1 LINK
        keyHash = _keyHash;
        
    }

    function enter() public payable{
        require(msg.value >= getEntranceFee(), "Sorry, not enough ETH to enter!");
        require(state == STATE.OPEN, "Sorry, entries are currently closed!");
        participants.push(msg.sender);
    }

    function getEntranceFee() public view returns(uint256){
        uint256 precision = 1 * 10 ** 18;
        uint256 price = getLastestEthUsdPrice();
        uint256 costToEnter = (precision / price) * (usdEntryFee * 100000000);
        return costToEnter;
    }

    function getLastestEthUsdPrice() public view returns(uint256){
        (
            uint80 roundId,
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = ethUsdPriceFeed.latestRoundData();

        return uint256(price);
    }

    function startLottery() public onlyOwner{
        require(state == STATE.CLOSED, "The lottery has already started");
        state = STATE.OPEN;
    }

    function endLottery() public onlyOwner{
        require(state == STATE.OPEN, "Cannot end lottery yet!");
        state = STATE.DRAWING;
        pickWinner();
    }

    function pickWinner() private returns(bytes32) {
        require(state == STATE.DRAWING, "Needs to be drawing the winner");
        bytes32 requestId = requestRandomness(keyHash, fee);
        emit requestedRandomness(requestId);
    }

    function fulfillRandomness(bytes32 requestId, uint256 randomness) internal override {
        require(randomness > 0, "Randomness number not found");
        uint winningNumber = randomness % participants.length;
        recentWinner = participants[winningNumber];
        participants = new address payable[](0);
        state = STATE.CLOSED;
        participants[winningNumber].transfer(address(this).balance);
        randomness = randomness;
    }
}