# Report

| |Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | Division by zero not prevented | 1 |
| [L-2](#L-2) | Loss of precision | 1 |
| [L-3](#L-3) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [L-4](#L-4) | Consider using OpenZeppelin's SafeCast library to prevent unexpected overflows when downcasting | 1 |
| [GAS-1](#GAS-1) | `a = a + b` is more gas effective than `a += b` for state variables (excluding arrays and mappings) | 1 |
| [GAS-2](#GAS-2) | Cache array length outside of loop | 1 |
| [GAS-3](#GAS-3) | For Operations that will not overflow, you could use unchecked | 3 |
| [GAS-4](#GAS-4) | Use Custom Errors instead of Revert Strings to save Gas | 2 |
| [GAS-5](#GAS-5) | `++i` costs less gas compared to `i++` or `i += 1` (same for `--i` vs `i--` or `i -= 1`) | 1 |
| [GAS-6](#GAS-6) | Increments/decrements can be unchecked in for-loops | 1 |
| [GAS-7](#GAS-7) | Use != 0 instead of > 0 for unsigned integer comparison | 1 |
| [NC-1](#NC-1) | Functions should not be longer than 50 lines | 1 |
| [NC-2](#NC-2) | NatSpec is completely non-existent on functions that should have them | 1 |
| [NC-3](#NC-3) | Variables need not be initialized to zero | 2 |



### <a name="L-1"></a>[L-1] Division by zero not prevented
The divisions below take an input parameter which does not have any zero-value checks, which may lead to the functions reverting when zero is passed.

*Instances (1)*:
```solidity
File: HighGasConsumptionDataType.sol

15:         tempAverageAPR = tempAverageAPR / uint8(agenciesAPR.length);

```

### <a name="L-2"></a>[L-2] Loss of precision
Division by large numbers may result in the result being zero, due to solidity not supporting fractions. Consider requiring a minimum amount for the numerator to ensure that it is always larger than the denominator

*Instances (1)*:
```solidity
File: HighGasConsumptionDataType.sol

15:         tempAverageAPR = tempAverageAPR / uint8(agenciesAPR.length);

```

### <a name="L-3"></a>[L-3] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: HighGasConsumptionDataType.sol

2: pragma solidity 0.8.17;

```

### <a name="L-4"></a>[L-4] Consider using OpenZeppelin's SafeCast library to prevent unexpected overflows when downcasting
Downcasting from `uint256`/`int256` in Solidity does not revert on overflow. This can result in undesired exploitation or bugs, since developers usually assume that overflows raise errors. [OpenZeppelin's SafeCast library](https://docs.openzeppelin.com/contracts/3.x/api/utils#SafeCast) restores this intuition by reverting the transaction when such an operation overflows. Using this library eliminates an entire class of bugs, so it's recommended to use it always. Some exceptions are acceptable like with the classic `uint256(uint160(address(variable)))`

*Instances (1)*:
```solidity
File: HighGasConsumptionDataType.sol

15:         tempAverageAPR = tempAverageAPR / uint8(agenciesAPR.length);

```

### <a name="GAS-1"></a>[GAS-1] `a = a + b` is more gas effective than `a += b` for state variables (excluding arrays and mappings)
This saves **16 gas per instance.**

*Instances (1)*:
```solidity
File: HighGasConsumptionDataType.sol

13:             tempAverageAPR += agenciesAPR[index];

```

### <a name="GAS-2"></a>[GAS-2] Cache array length outside of loop
If not cached, the solidity compiler will always read the length of the array during each iteration. That is, if it is a storage array, this is an extra sload operation (100 additional extra gas for each iteration except for the first) and if it is a memory array, this is an extra mload operation (3 additional gas for each iteration except for the first).

*Instances (1)*:
```solidity
File: HighGasConsumptionDataType.sol

12:         for (uint8 index = 0; index < agenciesAPR.length; index++) {

```

### <a name="GAS-3"></a>[GAS-3] For Operations that will not overflow, you could use unchecked

*Instances (3)*:
```solidity
File: HighGasConsumptionDataType.sol

12:         for (uint8 index = 0; index < agenciesAPR.length; index++) {

13:             tempAverageAPR += agenciesAPR[index];

15:         tempAverageAPR = tempAverageAPR / uint8(agenciesAPR.length);

```

### <a name="GAS-4"></a>[GAS-4] Use Custom Errors instead of Revert Strings to save Gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

Additionally, custom errors can be used inside and outside of contracts (including interfaces and libraries).

Source: <https://blog.soliditylang.org/2021/04/21/custom-errors/>:

> Starting from [Solidity v0.8.4](https://github.com/ethereum/solidity/releases/tag/v0.8.4), there is a convenient and gas-efficient way to explain to users why an operation failed through the use of custom errors. Until now, you could already use strings to give more information about failures (e.g., `revert("Insufficient funds.");`), but they are rather expensive, especially when it comes to deploy cost, and it is difficult to use dynamic information in them.

Consider replacing **all revert strings** with custom errors in the solution, and particularly those that have multiple occurrences:

*Instances (2)*:
```solidity
File: HighGasConsumptionDataType.sol

9:         require(agenciesAPR.length > 0, "Please provide the APRs");

20:         require(_averageAPR != 0, "APR not computed yet");

```

### <a name="GAS-5"></a>[GAS-5] `++i` costs less gas compared to `i++` or `i += 1` (same for `--i` vs `i--` or `i -= 1`)
Pre-increments and pre-decrements are cheaper.

For a `uint256 i` variable, the following is true with the Optimizer enabled at 10k:

**Increment:**

- `i += 1` is the most expensive form
- `i++` costs 6 gas less than `i += 1`
- `++i` costs 5 gas less than `i++` (11 gas less than `i += 1`)

**Decrement:**

- `i -= 1` is the most expensive form
- `i--` costs 11 gas less than `i -= 1`
- `--i` costs 5 gas less than `i--` (16 gas less than `i -= 1`)

Note that post-increments (or post-decrements) return the old value before incrementing or decrementing, hence the name *post-increment*:

```solidity
uint i = 1;  
uint j = 2;
require(j == i++, "This will be false as i is incremented after the comparison");
```
  
However, pre-increments (or pre-decrements) return the new value:
  
```solidity
uint i = 1;  
uint j = 2;
require(j == ++i, "This will be true as i is incremented before the comparison");
```

In the pre-increment case, the compiler has to create a temporary variable (when used) for returning `1` instead of `2`.

Consider using pre-increments and pre-decrements where they are relevant (meaning: not where post-increments/decrements logic are relevant).

*Saves 5 gas per instance*

*Instances (1)*:
```solidity
File: HighGasConsumptionDataType.sol

12:         for (uint8 index = 0; index < agenciesAPR.length; index++) {

```

### <a name="GAS-6"></a>[GAS-6] Increments/decrements can be unchecked in for-loops
In Solidity 0.8+, there's a default overflow check on unsigned integers. It's possible to uncheck this in for-loops and save some gas at each iteration, but at the cost of some code readability, as this uncheck cannot be made inline.

[ethereum/solidity#10695](https://github.com/ethereum/solidity/issues/10695)

The change would be:

```diff
- for (uint256 i; i < numIterations; i++) {
+ for (uint256 i; i < numIterations;) {
 // ...  
+   unchecked { ++i; }
}  
```

These save around **25 gas saved** per instance.

The same can be applied with decrements (which should use `break` when `i == 0`).

The risk of overflow is non-existent for `uint256`.

*Instances (1)*:
```solidity
File: HighGasConsumptionDataType.sol

12:         for (uint8 index = 0; index < agenciesAPR.length; index++) {

```

### <a name="GAS-7"></a>[GAS-7] Use != 0 instead of > 0 for unsigned integer comparison

*Instances (1)*:
```solidity
File: HighGasConsumptionDataType.sol

9:         require(agenciesAPR.length > 0, "Please provide the APRs");

```

### <a name="NC-1"></a>[NC-1] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (1)*:
```solidity
File: HighGasConsumptionDataType.sol

8:     function computeAPR(uint8[] calldata agenciesAPR) external {

```

### <a name="NC-2"></a>[NC-2] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (1)*:
```solidity
File: HighGasConsumptionDataType.sol

8:     function computeAPR(uint8[] calldata agenciesAPR) external {

```

### <a name="NC-3"></a>[NC-3] Variables need not be initialized to zero
The default value for variables is zero, so initializing them to zero is superfluous.

*Instances (2)*:
```solidity
File: HighGasConsumptionDataType.sol

11:         uint8 tempAverageAPR = 0;

12:         for (uint8 index = 0; index < agenciesAPR.length; index++) {

```

