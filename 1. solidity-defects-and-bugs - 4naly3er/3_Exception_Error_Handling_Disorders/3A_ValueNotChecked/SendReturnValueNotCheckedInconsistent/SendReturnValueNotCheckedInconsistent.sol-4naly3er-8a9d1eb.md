# Report

| |Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [GAS-1](#GAS-1) | State variables should be cached in stack variables rather than re-reading them from storage | 1 |
| [GAS-2](#GAS-2) | Stack variable used as a cheaper cache for a state variable is only used once | 2 |
| [NC-1](#NC-1) | Event missing indexed field | 1 |
| [NC-2](#NC-2) | Change uint to uint256 | 2 |
| [NC-3](#NC-3) | NatSpec is completely non-existent on functions that should have them | 1 |
| [NC-4](#NC-4) | Event is missing `indexed` fields | 1 |



### <a name="L-1"></a>[L-1] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: SendReturnValueNotCheckedInconsistent.sol

2: pragma solidity 0.8.17;

```

### <a name="GAS-1"></a>[GAS-1] State variables should be cached in stack variables rather than re-reading them from storage
The instances below point to the second+ access of a state variable within a function. Caching of a state variable replaces each Gwarmaccess (100 gas) with a much cheaper stack read. Other less obvious fixes/optimizations include having local memory caches of state variable structs, or having local caches of state variable contracts/addresses.

*Saves 100 gas per instance*

*Instances (1)*:
```solidity
File: SendReturnValueNotCheckedInconsistent.sol

18:             emit Bid(highestBidder, success);

```

### <a name="GAS-2"></a>[GAS-2] Stack variable used as a cheaper cache for a state variable is only used once
If the variable is only accessed once, it's cheaper to use the state variable directly that one time, and save the **3 gas** the extra stack assignment would spend

*Instances (2)*:
```solidity
File: SendReturnValueNotCheckedInconsistent.sol

13:             uint hb_tmp = highestBid;

14:             address hd_addr = highestBidder;

```

### <a name="NC-1"></a>[NC-1] Event missing indexed field
Index event fields make the field more quickly accessible [to off-chain tools](https://ethereum.stackexchange.com/questions/40396/can-somebody-please-explain-the-concept-of-event-indexing) that parse events. This is especially useful when it comes to filtering based on an address. However, note that each index field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Where applicable, each `event` should use three `indexed` fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three applicable fields, all of the applicable fields should be indexed.

*Instances (1)*:
```solidity
File: SendReturnValueNotCheckedInconsistent.sol

7:     event Bid(address, bool);

```

### <a name="NC-2"></a>[NC-2] Change uint to uint256
Throughout the code base, some variables are declared as `uint`. To favor explicitness, consider changing all instances of `uint` to `uint256`

*Instances (2)*:
```solidity
File: SendReturnValueNotCheckedInconsistent.sol

6:     uint public highestBid;

13:             uint hb_tmp = highestBid;

```

### <a name="NC-3"></a>[NC-3] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (1)*:
```solidity
File: SendReturnValueNotCheckedInconsistent.sol

11:     function bid() external payable {

```

### <a name="NC-4"></a>[NC-4] Event is missing `indexed` fields
Index event fields make the field more quickly accessible to off-chain tools that parse events. However, note that each index field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Each event should use three indexed fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three fields, all of the fields should be indexed.

*Instances (1)*:
```solidity
File: SendReturnValueNotCheckedInconsistent.sol

7:     event Bid(address, bool);

```

