# RandomNumberConsumer.sol

View Source: [\contracts\RandomNumberConsumer.sol](..\contracts\RandomNumberConsumer.sol)

**↗ Extends: [VRFConsumerBase](VRFConsumerBase.md)**

**RandomNumberConsumer**

## Contract Members
**Constants & Variables**

```js
//internal members
bytes32 internal keyHash;
uint256 internal fee;

//public members
uint256 public randomResult;

```

**Events**

```js
event RequestedRandomness(bytes32  requestId);
```

## Functions

- [(address _linkTokenAddress, bytes32 _keyHash, address _vrfCoordinatorAddress, uint256 _fee)](#)
- [getRandomNumber()](#getrandomnumber)
- [getChainlinkToken()](#getchainlinktoken)
- [fulfillRandomness(bytes32 , uint256 randomness)](#fulfillrandomness)

### 

```js
function (address _linkTokenAddress, bytes32 _keyHash, address _vrfCoordinatorAddress, uint256 _fee) public nonpayable VRFConsumerBase 
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _linkTokenAddress | address |  | 
| _keyHash | bytes32 |  | 
| _vrfCoordinatorAddress | address |  | 
| _fee | uint256 |  | 

### getRandomNumber

```js
function getRandomNumber() public nonpayable
returns(requestId bytes32)
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

### getChainlinkToken

```js
function getChainlinkToken() public view
returns(address)
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

### fulfillRandomness

```js
function fulfillRandomness(bytes32 , uint256 randomness) internal nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
|  | bytes32 |  | 
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
