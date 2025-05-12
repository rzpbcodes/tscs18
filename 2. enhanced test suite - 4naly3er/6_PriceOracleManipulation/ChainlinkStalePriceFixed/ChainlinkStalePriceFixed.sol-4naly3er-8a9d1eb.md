# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | Missing checks for whether the L2 Sequencer is active | 1 |
| [GAS-1](#GAS-1) | For Operations that will not overflow, you could use unchecked | 1 |
| [GAS-2](#GAS-2) | Use Custom Errors instead of Revert Strings to save Gas | 3 |
| [GAS-3](#GAS-3) | State variables only set in the constructor should be declared `immutable` | 1 |
| [GAS-4](#GAS-4) | Use != 0 instead of > 0 for unsigned integer comparison | 1 |
| [NC-1](#NC-1) | Functions should not be longer than 50 lines | 1 |
| [NC-2](#NC-2) | Interfaces should be defined in separate files from their usage | 1 |
| [NC-3](#NC-3) | Contract does not follow the Solidity style guide's suggested layout ordering | 1 |
| [NC-4](#NC-4) | Internal and private variables and functions names should begin with an underscore | 1 |
| [NC-5](#NC-5) | `public` functions not called by the contract should be declared `external` instead | 1 |



### <a name="M-1"></a>[M-1] Missing checks for whether the L2 Sequencer is active
Chainlink recommends that users using price oracles, check whether the Arbitrum Sequencer is [active](https://docs.chain.link/data-feeds/l2-sequencer-feeds#arbitrum). If the sequencer goes down, the Chainlink oracles will have stale prices from before the downtime, until a new L2 OCR transaction goes through. Users who submit their transactions via the [L1 Dealyed Inbox](https://developer.arbitrum.io/tx-lifecycle#1b--or-from-l1-via-the-delayed-inbox) will be able to take advantage of these stale prices. Use a [Chainlink oracle](https://blog.chain.link/how-to-use-chainlink-price-feeds-on-arbitrum/#almost_done!_meet_the_l2_sequencer_health_flag) to determine whether the sequencer is offline or not, and don't allow operations to take place while the sequencer is offline.

*Instances (1)*:
```solidity
File: ChainlinkStalePriceFixed.sol

25:         (
                uint80 roundId,
                int256 price,
                uint256 startedAt,
                uint256 updatedAt,

```

### <a name="GAS-1"></a>[GAS-1] For Operations that will not overflow, you could use unchecked

*Instances (1)*:
```solidity
File: ChainlinkStalePriceFixed.sol

34:         require(block.timestamp - updatedAt < 1 hours, "Stale price data");

```

### <a name="GAS-2"></a>[GAS-2] Use Custom Errors instead of Revert Strings to save Gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

Additionally, custom errors can be used inside and outside of contracts (including interfaces and libraries).

Source: <https://blog.soliditylang.org/2021/04/21/custom-errors/>:

> Starting from [Solidity v0.8.4](https://github.com/ethereum/solidity/releases/tag/v0.8.4), there is a convenient and gas-efficient way to explain to users why an operation failed through the use of custom errors. Until now, you could already use strings to give more information about failures (e.g., `revert("Insufficient funds.");`), but they are rather expensive, especially when it comes to deploy cost, and it is difficult to use dynamic information in them.

Consider replacing **all revert strings** with custom errors in the solution, and particularly those that have multiple occurrences:

*Instances (3)*:
```solidity
File: ChainlinkStalePriceFixed.sol

33:         require(price > 0, "Invalid price feed");

34:         require(block.timestamp - updatedAt < 1 hours, "Stale price data");

35:         require(answeredInRound >= roundId, "Invalid round data");

```

### <a name="GAS-3"></a>[GAS-3] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (1)*:
```solidity
File: ChainlinkStalePriceFixed.sol

21:         priceFeed = AggregatorV3Interface(_priceFeedAddress);

```

### <a name="GAS-4"></a>[GAS-4] Use != 0 instead of > 0 for unsigned integer comparison

*Instances (1)*:
```solidity
File: ChainlinkStalePriceFixed.sol

33:         require(price > 0, "Invalid price feed");

```

### <a name="NC-1"></a>[NC-1] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (1)*:
```solidity
File: ChainlinkStalePriceFixed.sol

24:     function getLatestPrice() public view returns (int256) {

```

### <a name="NC-2"></a>[NC-2] Interfaces should be defined in separate files from their usage
The interfaces below should be defined in separate files, so that it's easier for future projects to import them, and to avoid duplication later on if they need to be used elsewhere in the project

*Instances (1)*:
```solidity
File: ChainlinkStalePriceFixed.sol

4: interface AggregatorV3Interface {

```

### <a name="NC-3"></a>[NC-3] Contract does not follow the Solidity style guide's suggested layout ordering
The [style guide](https://docs.soliditylang.org/en/v0.8.16/style-guide.html#order-of-layout) says that, within a contract, the ordering should be:

1) Type declarations
2) State variables
3) Events
4) Modifiers
5) Functions

However, the contract(s) below do not follow this ordering

*Instances (1)*:
```solidity
File: ChainlinkStalePriceFixed.sol

1: 
   Current order:
   FunctionDefinition.latestRoundData
   VariableDeclaration.priceFeed
   FunctionDefinition.constructor
   FunctionDefinition.getLatestPrice
   
   Suggested order:
   VariableDeclaration.priceFeed
   FunctionDefinition.latestRoundData
   FunctionDefinition.constructor
   FunctionDefinition.getLatestPrice

```

### <a name="NC-4"></a>[NC-4] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (1)*:
```solidity
File: ChainlinkStalePriceFixed.sol

18:     AggregatorV3Interface internal priceFeed;

```

### <a name="NC-5"></a>[NC-5] `public` functions not called by the contract should be declared `external` instead

*Instances (1)*:
```solidity
File: ChainlinkStalePriceFixed.sol

24:     function getLatestPrice() public view returns (int256) {

```

