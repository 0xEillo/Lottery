# MyContract.sol

View Source: [\contracts\MyContract.sol](..\contracts\MyContract.sol)

**↗ Extends: [ChainlinkClient](ChainlinkClient.md), [Ownable](Ownable.md)**

**MyContract**

## Contract Members
**Constants & Variables**

```js
uint256 public data;

```

## Functions

- [(address _link)](#)
- [getChainlinkToken()](#getchainlinktoken)
- [createRequestTo(address _oracle, bytes32 _jobId, uint256 _payment, string _url, string _path, int256 _times)](#createrequestto)
- [fulfill(bytes32 _requestId, uint256 _data)](#fulfill)
- [withdrawLink()](#withdrawlink)
- [cancelRequest(bytes32 _requestId, uint256 _payment, bytes4 _callbackFunctionId, uint256 _expiration)](#cancelrequest)

### 

```js
function (address _link) public nonpayable
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _link | address |  | 

### getChainlinkToken

```js
function getChainlinkToken() public view
returns(address)
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

### createRequestTo

```js
function createRequestTo(address _oracle, bytes32 _jobId, uint256 _payment, string _url, string _path, int256 _times) public nonpayable onlyOwner 
returns(requestId bytes32)
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _oracle | address |  | 
| _jobId | bytes32 |  | 
| _payment | uint256 |  | 
| _url | string |  | 
| _path | string |  | 
| _times | int256 |  | 

### fulfill

```js
function fulfill(bytes32 _requestId, uint256 _data) public nonpayable recordChainlinkFulfillment 
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _requestId | bytes32 |  | 
| _data | uint256 |  | 

### withdrawLink

```js
function withdrawLink() public nonpayable onlyOwner 
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|

### cancelRequest

```js
function cancelRequest(bytes32 _requestId, uint256 _payment, bytes4 _callbackFunctionId, uint256 _expiration) public nonpayable onlyOwner 
```

**Arguments**

| Name        | Type           | Description  |
| ------------- |------------- | -----|
| _requestId | bytes32 |  | 
| _payment | uint256 |  | 
| _callbackFunctionId | bytes4 |  | 
| _expiration | uint256 |  | 

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
