pragma solidity ^0.6.6;
import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
import "@chainlink/contracts/src/v0.6/vendor/SafeMathChainlink.sol";
import "@chainlink/contracts/src/v0.6/VRFConsumerBase.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Lottery {
    using SafeMathChainlink for uint256;
    
    AggregatorV3Interface internal ethUsdPriceFeed;
    uint8 public usdEntryFee;

    event RequestedRandomness(bytes32 requestId);

    constructor(address _ethUsdPriceFeed, uint8 _usdEntryFee) public{

        ethUsdPriceFeed = AggregatorV3Interface(_ethUsdPriceFeed);
        usdEntryFee = _usdEntryFee; //$
        
    }

    function enter() public payable{
        
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

    function startLottery() public {
        
    }

    function endLottery() public{
        
        
    }

    function pickWinner() private {
        
    }

    function fulfillRandomness() internal {
        
    }
}