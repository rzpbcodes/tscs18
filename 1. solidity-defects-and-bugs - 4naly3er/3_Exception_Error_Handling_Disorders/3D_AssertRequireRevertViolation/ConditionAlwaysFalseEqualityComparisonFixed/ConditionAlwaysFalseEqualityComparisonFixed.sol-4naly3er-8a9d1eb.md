# Report

| |Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [GAS-1](#GAS-1) | For Operations that will not overflow, you could use unchecked | 1 |
| [NC-1](#NC-1) | `require()` should be used instead of `assert()` | 1 |
| [NC-2](#NC-2) | Functions should not be longer than 50 lines | 1 |



### <a name="L-1"></a>[L-1] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: ConditionAlwaysFalseEqualityComparisonFixed.sol

2: pragma solidity 0.8.17;

```

### <a name="GAS-1"></a>[GAS-1] For Operations that will not overflow, you could use unchecked

*Instances (1)*:
```solidity
File: ConditionAlwaysFalseEqualityComparisonFixed.sol

11:         uint256 number = parameter1 * parameter2;

```

### <a name="NC-1"></a>[NC-1] `require()` should be used instead of `assert()`
Prior to solidity version 0.8.0, hitting an assert consumes the **remainder of the transaction's available gas** rather than returning it, as `require()`/`revert()` do. `assert()` should be avoided even past solidity version 0.8.0 as its [documentation](https://docs.soliditylang.org/en/v0.8.14/control-structures.html#panic-via-assert-and-error-via-require) states that "The assert function creates an error of type Panic(uint256). ... Properly functioning code should never create a Panic, not even on invalid external input. If this happens, then there is a bug in your contract which you should fix. Additionally, a require statement (or a custom error) are more friendly in terms of understanding what happened."

*Instances (1)*:
```solidity
File: ConditionAlwaysFalseEqualityComparisonFixed.sol

12:         assert(number != 0);

```

### <a name="NC-2"></a>[NC-2] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (1)*:
```solidity
File: ConditionAlwaysFalseEqualityComparisonFixed.sol

6:     function notGonnaExecute(uint256 parameter1, uint256 parameter2)

```

