# Report

| |Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [GAS-1](#GAS-1) | Use != 0 instead of > 0 for unsigned integer comparison | 1 |
| [NC-1](#NC-1) | `require()` / `revert()` statements should have descriptive reason strings | 1 |



### <a name="L-1"></a>[L-1] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: ConditionAlwaysTrueUintPositiveFixed.sol

2: pragma solidity 0.8.17;

```

### <a name="GAS-1"></a>[GAS-1] Use != 0 instead of > 0 for unsigned integer comparison

*Instances (1)*:
```solidity
File: ConditionAlwaysTrueUintPositiveFixed.sol

11:         require(parameter > 0);

```

### <a name="NC-1"></a>[NC-1] `require()` / `revert()` statements should have descriptive reason strings

*Instances (1)*:
```solidity
File: ConditionAlwaysTrueUintPositiveFixed.sol

11:         require(parameter > 0);

```

