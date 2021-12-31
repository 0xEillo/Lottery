# PriceConsumerV3.sol

View Source: [\contracts\PriceConsumerV3.sol](..\contracts\PriceConsumerV3.sol)

**PriceConsumerV3**

## Contract Members
**Constants & Variables**

```js
contract AggregatorV3Interface internal priceFeed;

```

## Functions

- [(address _priceFeed)](#)
- [getLatestPrice()](#getlatestprice)

### 

```js
function (address _priceFeed) public nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _priceFeed | address |  | 

### getLatestPrice

```js
function getLatestPrice() public view
returns(int256)
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

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
