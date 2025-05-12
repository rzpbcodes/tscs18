# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | `call()` should be used instead of `transfer()` on an `address payable` | 1 |
| [L-1](#L-1) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [L-2](#L-2) | Unsafe ERC20 operation(s) | 1 |
| [GAS-1](#GAS-1) | Use assembly to check for `address(0)` | 1 |
| [GAS-2](#GAS-2) | Use != 0 instead of > 0 for unsigned integer comparison | 1 |
| [NC-1](#NC-1) | Event missing indexed field | 1 |
| [NC-2](#NC-2) | Functions should not be longer than 50 lines | 1 |
| [NC-3](#NC-3) | NatSpec is completely non-existent on functions that should have them | 1 |
| [NC-4](#NC-4) | `require()` / `revert()` statements should have descriptive reason strings | 2 |
| [NC-5](#NC-5) | Event is missing `indexed` fields | 1 |



### <a name="M-1"></a>[M-1] `call()` should be used instead of `transfer()` on an `address payable`
The use of the deprecated `transfer()` function for an address may make the transaction fail due to the 2300 gas stipend

*Instances (1)*:
```solidity
File: EtherLostSimple.sol

11:         payable(recipient).transfer(msg.value);

```

### <a name="L-1"></a>[L-1] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: EtherLostSimple.sol

2: pragma solidity 0.8.17;

```

### <a name="L-2"></a>[L-2] Unsafe ERC20 operation(s)

*Instances (1)*:
```solidity
File: EtherLostSimple.sol

11:         payable(recipient).transfer(msg.value);

```

### <a name="GAS-1"></a>[GAS-1] Use assembly to check for `address(0)`
*Saves 6 gas per instance*

*Instances (1)*:
```solidity
File: EtherLostSimple.sol

9:         require(recipient != address(0));

```

### <a name="GAS-2"></a>[GAS-2] Use != 0 instead of > 0 for unsigned integer comparison

*Instances (1)*:
```solidity
File: EtherLostSimple.sol

8:         require(msg.value > 0);

```

### <a name="NC-1"></a>[NC-1] Event missing indexed field
Index event fields make the field more quickly accessible [to off-chain tools](https://ethereum.stackexchange.com/questions/40396/can-somebody-please-explain-the-concept-of-event-indexing) that parse events. This is especially useful when it comes to filtering based on an address. However, note that each index field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Where applicable, each `event` should use three `indexed` fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three applicable fields, all of the applicable fields should be indexed.

*Instances (1)*:
```solidity
File: EtherLostSimple.sol

6:     event Forwarded(address, address);

```

### <a name="NC-2"></a>[NC-2] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (1)*:
```solidity
File: EtherLostSimple.sol

7:     function forward(address recipient) external payable {

```

### <a name="NC-3"></a>[NC-3] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (1)*:
```solidity
File: EtherLostSimple.sol

7:     function forward(address recipient) external payable {

```

### <a name="NC-4"></a>[NC-4] `require()` / `revert()` statements should have descriptive reason strings

*Instances (2)*:
```solidity
File: EtherLostSimple.sol

8:         require(msg.value > 0);

9:         require(recipient != address(0));

```

### <a name="NC-5"></a>[NC-5] Event is missing `indexed` fields
Index event fields make the field more quickly accessible to off-chain tools that parse events. However, note that each index field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Each event should use three indexed fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three fields, all of the fields should be indexed.

*Instances (1)*:
```solidity
File: EtherLostSimple.sol

6:     event Forwarded(address, address);

```

