# Report

| |Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [GAS-1](#GAS-1) | State variables should be cached in stack variables rather than re-reading them from storage | 1 |
| [GAS-2](#GAS-2) | Use Custom Errors instead of Revert Strings to save Gas | 1 |
| [GAS-3](#GAS-3) | Stack variable used as a cheaper cache for a state variable is only used once | 2 |
| [NC-1](#NC-1) | Control structures do not follow the Solidity Style Guide | 1 |
| [NC-2](#NC-2) | Event missing indexed field | 1 |
| [NC-3](#NC-3) | Change uint to uint256 | 2 |
| [NC-4](#NC-4) | NatSpec is completely non-existent on functions that should have them | 1 |
| [NC-5](#NC-5) | Event is missing `indexed` fields | 1 |



### <a name="L-1"></a>[L-1] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: SendReturnValueNotCheckedInconsistentFixed.sol

2: pragma solidity 0.8.17;

```

### <a name="GAS-1"></a>[GAS-1] State variables should be cached in stack variables rather than re-reading them from storage
The instances below point to the second+ access of a state variable within a function. Caching of a state variable replaces each Gwarmaccess (100 gas) with a much cheaper stack read. Other less obvious fixes/optimizations include having local memory caches of state variable structs, or having local caches of state variable contracts/addresses.

*Saves 100 gas per instance*

*Instances (1)*:
```solidity
File: SendReturnValueNotCheckedInconsistentFixed.sol

18:             emit Bid(highestBidder, success);

```

### <a name="GAS-2"></a>[GAS-2] Use Custom Errors instead of Revert Strings to save Gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

Additionally, custom errors can be used inside and outside of contracts (including interfaces and libraries).

Source: <https://blog.soliditylang.org/2021/04/21/custom-errors/>:

> Starting from [Solidity v0.8.4](https://github.com/ethereum/solidity/releases/tag/v0.8.4), there is a convenient and gas-efficient way to explain to users why an operation failed through the use of custom errors. Until now, you could already use strings to give more information about failures (e.g., `revert("Insufficient funds.");`), but they are rather expensive, especially when it comes to deploy cost, and it is difficult to use dynamic information in them.

Consider replacing **all revert strings** with custom errors in the solution, and particularly those that have multiple occurrences:

*Instances (1)*:
```solidity
File: SendReturnValueNotCheckedInconsistentFixed.sol

20:                 revert("Failed to return bid");

```

### <a name="GAS-3"></a>[GAS-3] Stack variable used as a cheaper cache for a state variable is only used once
If the variable is only accessed once, it's cheaper to use the state variable directly that one time, and save the **3 gas** the extra stack assignment would spend

*Instances (2)*:
```solidity
File: SendReturnValueNotCheckedInconsistentFixed.sol

13:             uint hb_tmp = highestBid;

14:             address hd_addr = highestBidder;

```

### <a name="NC-1"></a>[NC-1] Control structures do not follow the Solidity Style Guide
See the [control structures](https://docs.soliditylang.org/en/latest/style-guide.html#control-structures) section of the Solidity Style Guide

*Instances (1)*:
```solidity
File: SendReturnValueNotCheckedInconsistentFixed.sol

19:             if (!success) 

```

### <a name="NC-2"></a>[NC-2] Event missing indexed field
Index event fields make the field more quickly accessible [to off-chain tools](https://ethereum.stackexchange.com/questions/40396/can-somebody-please-explain-the-concept-of-event-indexing) that parse events. This is especially useful when it comes to filtering based on an address. However, note that each index field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Where applicable, each `event` should use three `indexed` fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three applicable fields, all of the applicable fields should be indexed.

*Instances (1)*:
```solidity
File: SendReturnValueNotCheckedInconsistentFixed.sol

7:     event Bid(address, bool);

```

### <a name="NC-3"></a>[NC-3] Change uint to uint256
Throughout the code base, some variables are declared as `uint`. To favor explicitness, consider changing all instances of `uint` to `uint256`

*Instances (2)*:
```solidity
File: SendReturnValueNotCheckedInconsistentFixed.sol

6:     uint public highestBid;

13:             uint hb_tmp = highestBid;

```

### <a name="NC-4"></a>[NC-4] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (1)*:
```solidity
File: SendReturnValueNotCheckedInconsistentFixed.sol

11:     function bid() external payable {

```

### <a name="NC-5"></a>[NC-5] Event is missing `indexed` fields
Index event fields make the field more quickly accessible to off-chain tools that parse events. However, note that each index field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Each event should use three indexed fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three fields, all of the fields should be indexed.

*Instances (1)*:
```solidity
File: SendReturnValueNotCheckedInconsistentFixed.sol

7:     event Bid(address, bool);

```

