# Migrations.sol

View Source: [\contracts\Migrations.sol](..\contracts\Migrations.sol)

**Migrations**

## Contract Members
**Constants & Variables**

```js
address public owner;
uint256 public lastCompletedMigration;

```

## Modifiers

- [restricted](#restricted)

### restricted

```js
modifier restricted() internal
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

## Functions

- [()](#)
- [setCompleted(uint256 completed)](#setcompleted)
- [upgrade(address newAddress)](#upgrade)

### 

```js
function () public nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

### setCompleted

```js
function setCompleted(uint256 completed) public nonpayable restricted 
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| completed | uint256 |  | 

### upgrade

```js
function upgrade(address newAddress) public nonpayable restricted 
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| newAddress | address |  | 

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
