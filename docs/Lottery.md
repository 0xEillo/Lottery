# Lottery.sol

View Source: [\contracts\Lottery.sol](..\contracts\Lottery.sol)

**↗ Extends: [VRFConsumerBase](VRFConsumerBase.md), [Ownable](Ownable.md)**

**Lottery**

**Enums**
### STATE

```js
enum STATE {
 OPEN,
 DRAWING,
 CLOSED
}
```

## Contract Members
**Constants & Variables**

```js
//internal members
contract AggregatorV3Interface internal ethUsdPriceFeed;
bytes32 internal keyHash;

//public members
uint8 public usdEntryFee;
address payable[] public participants;
address public recentWinner;
enum Lottery.STATE public state;
uint256 public fee;

```

**Events**

```js
event requestedRandomness(bytes32  _requestId);
```

## Functions

- [(address _ethUsdPriceFeed, uint8 _usdEntryFee, address _vrfCoordinator, address _link, bytes32 _keyHash)](#)
- [enter()](#enter)
- [getEntranceFee()](#getentrancefee)
- [getLastestEthUsdPrice()](#getlastestethusdprice)
- [startLottery()](#startlottery)
- [endLottery()](#endlottery)
- [pickWinner()](#pickwinner)
- [fulfillRandomness(bytes32 requestId, uint256 randomness)](#fulfillrandomness)

### 

```js
function (address _ethUsdPriceFeed, uint8 _usdEntryFee, address _vrfCoordinator, address _link, bytes32 _keyHash) public nonpayable VRFConsumerBase 
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _ethUsdPriceFeed | address |  | 
| _usdEntryFee | uint8 |  | 
| _vrfCoordinator | address |  | 
| _link | address |  | 
| _keyHash | bytes32 |  | 

### enter

```js
function enter() public payable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

### getEntranceFee

```js
function getEntranceFee() public view
returns(uint256)
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

### getLastestEthUsdPrice

```js
function getLastestEthUsdPrice() public view
returns(uint256)
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

### startLottery

```js
function startLottery() public nonpayable onlyOwner 
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

### endLottery

```js
function endLottery() public nonpayable onlyOwner 
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

### pickWinner

```js
function pickWinner() private nonpayable
returns(bytes32)
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

### fulfillRandomness

```js
function fulfillRandomness(bytes32 requestId, uint256 randomness) internal nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| requestId | bytes32 |  | 
| randomness | uint256 |  | 

## Contracts

* [AggregatorInterface](AggregatorInterface.md)
* [AggregatorV2V3Interface](AggregatorV2V3Interface.md)
* [AggregatorV3Interface](AggregatorV3Interface.md)
* [BufferChainlink](BufferChainlink.md)
* [CBORChainlink](CBORChainlink.md)
* [Chainlink](Chainlink.md)
* [ChainlinkClient](ChainlinkClient.md)
* [ChainlinkRequestInterface](ChainlinkRequestInterface.md)
* [Context](Context.md)
* [ENSInterface](ENSInterface.md)
* [ENSResolver](ENSResolver.md)
* [LinkTokenInterface](LinkTokenInterface.md)
* [Lottery](Lottery.md)
* [Migrations](Migrations.md)
* [MockV3Aggregator](MockV3Aggregator.md)
* [MyContract](MyContract.md)
* [Ownable](Ownable.md)
* [PointerInterface](PointerInterface.md)
* [PriceConsumerV3](PriceConsumerV3.md)
* [RandomNumberConsumer](RandomNumberConsumer.md)
* [SafeMathChainlink](SafeMathChainlink.md)
* [VRFConsumerBase](VRFConsumerBase.md)
* [VRFCoordinatorMock](VRFCoordinatorMock.md)
* [VRFRequestIDBase](VRFRequestIDBase.md)
