# Report

| |Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | Division by zero not prevented | 1 |
| [L-2](#L-2) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [GAS-1](#GAS-1) | Using bools for storage incurs overhead | 1 |
| [GAS-2](#GAS-2) | For Operations that will not overflow, you could use unchecked | 3 |
| [GAS-3](#GAS-3) | Use Custom Errors instead of Revert Strings to save Gas | 3 |
| [GAS-4](#GAS-4) | Use != 0 instead of > 0 for unsigned integer comparison | 1 |
| [NC-1](#NC-1) | Duplicated `require()`/`revert()` Checks Should Be Refactored To A Modifier Or Function | 2 |
| [NC-2](#NC-2) | Functions should not be longer than 50 lines | 3 |
| [NC-3](#NC-3) | NatSpec is completely non-existent on functions that should have them | 2 |



### <a name="L-1"></a>[L-1] Division by zero not prevented
The divisions below take an input parameter which does not have any zero-value checks, which may lead to the functions reverting when zero is passed.

*Instances (1)*:
```solidity
File: ShadowingStateVariableFixed.sol

20:         _result = _totalSalary / _respondentsCount;

```

### <a name="L-2"></a>[L-2] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: ShadowingStateVariableFixed.sol

2: pragma solidity 0.8.17;

```

### <a name="GAS-1"></a>[GAS-1] Using bools for storage incurs overhead
Use uint256(1) and uint256(2) for true/false to avoid a Gwarmaccess (100 gas), and to avoid Gsset (20000 gas) when changing from ‘false’ to ‘true’, after having been ‘true’ in the past. See [source](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/58f635312aa21f947cae5f8578638a85aa2519f5/contracts/security/ReentrancyGuard.sol#L23-L27).

*Instances (1)*:
```solidity
File: ShadowingStateVariableFixed.sol

9:     bool private _surveyOver;

```

### <a name="GAS-2"></a>[GAS-2] For Operations that will not overflow, you could use unchecked

*Instances (3)*:
```solidity
File: ShadowingStateVariableFixed.sol

13:         _totalSalary = _totalSalary + salary;

14:         _respondentsCount = _respondentsCount + 1;

20:         _result = _totalSalary / _respondentsCount;

```

### <a name="GAS-3"></a>[GAS-3] Use Custom Errors instead of Revert Strings to save Gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

Additionally, custom errors can be used inside and outside of contracts (including interfaces and libraries).

Source: <https://blog.soliditylang.org/2021/04/21/custom-errors/>:

> Starting from [Solidity v0.8.4](https://github.com/ethereum/solidity/releases/tag/v0.8.4), there is a convenient and gas-efficient way to explain to users why an operation failed through the use of custom errors. Until now, you could already use strings to give more information about failures (e.g., `revert("Insufficient funds.");`), but they are rather expensive, especially when it comes to deploy cost, and it is difficult to use dynamic information in them.

Consider replacing **all revert strings** with custom errors in the solution, and particularly those that have multiple occurrences:

*Instances (3)*:
```solidity
File: ShadowingStateVariableFixed.sol

12:         require(!_surveyOver, "Ther survey has ended");

18:         require(_respondentsCount > 0, "Nobody has responded yet");

19:         require(!_surveyOver, "Ther survey has ended");

```

### <a name="GAS-4"></a>[GAS-4] Use != 0 instead of > 0 for unsigned integer comparison

*Instances (1)*:
```solidity
File: ShadowingStateVariableFixed.sol

18:         require(_respondentsCount > 0, "Nobody has responded yet");

```

### <a name="NC-1"></a>[NC-1] Duplicated `require()`/`revert()` Checks Should Be Refactored To A Modifier Or Function

*Instances (2)*:
```solidity
File: ShadowingStateVariableFixed.sol

12:         require(!_surveyOver, "Ther survey has ended");

19:         require(!_surveyOver, "Ther survey has ended");

```

### <a name="NC-2"></a>[NC-2] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (3)*:
```solidity
File: ShadowingStateVariableFixed.sol

11:     function registerSalary(uint256 salary) external {

17:     function calculateResult() external returns (uint256) {

25:     function getResult() external view returns (uint256) {

```

### <a name="NC-3"></a>[NC-3] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (2)*:
```solidity
File: ShadowingStateVariableFixed.sol

11:     function registerSalary(uint256 salary) external {

17:     function calculateResult() external returns (uint256) {

```

