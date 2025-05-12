# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | Centralization Risk for trusted owners | 1 |
| [L-1](#L-1) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [GAS-1](#GAS-1) | `a = a + b` is more gas effective than `a += b` for state variables (excluding arrays and mappings) | 1 |
| [GAS-2](#GAS-2) | For Operations that will not overflow, you could use unchecked | 3 |
| [GAS-3](#GAS-3) | State variables only set in the constructor should be declared `immutable` | 1 |
| [GAS-4](#GAS-4) | Functions guaranteed to revert when called by normal users can be marked `payable` | 1 |
| [GAS-5](#GAS-5) | `++i` costs less gas compared to `i++` or `i += 1` (same for `--i` vs `i--` or `i -= 1`) | 2 |
| [GAS-6](#GAS-6) | Increments/decrements can be unchecked in for-loops | 1 |
| [NC-1](#NC-1) | Functions should not be longer than 50 lines | 2 |
| [NC-2](#NC-2) | NatSpec is completely non-existent on functions that should have them | 1 |
| [NC-3](#NC-3) | Consider using named mappings | 1 |
| [NC-4](#NC-4) | Internal and private variables and functions names should begin with an underscore | 1 |
| [NC-5](#NC-5) | Variables need not be initialized to zero | 1 |



### <a name="M-1"></a>[M-1] Centralization Risk for trusted owners

#### Impact:
Contracts have owners with privileged rights to perform admin tasks and need to be trusted to not perform malicious updates or drain funds.

*Instances (1)*:
```solidity
File: OutdatedCompilerVersionFixed.sol

35:     function calculateTotalExpense() external view onlyOwner returns (uint256) {

```

### <a name="L-1"></a>[L-1] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: OutdatedCompilerVersionFixed.sol

2: pragma solidity 0.8.17;

```

### <a name="GAS-1"></a>[GAS-1] `a = a + b` is more gas effective than `a += b` for state variables (excluding arrays and mappings)
This saves **16 gas per instance.**

*Instances (1)*:
```solidity
File: OutdatedCompilerVersionFixed.sol

38:             totalExpense += _expenses[index].Value;

```

### <a name="GAS-2"></a>[GAS-2] For Operations that will not overflow, you could use unchecked

*Instances (3)*:
```solidity
File: OutdatedCompilerVersionFixed.sol

32:         _expensesCount++;

37:         for (uint256 index = 0; index < _expensesCount; index++) {

38:             totalExpense += _expenses[index].Value;

```

### <a name="GAS-3"></a>[GAS-3] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (1)*:
```solidity
File: OutdatedCompilerVersionFixed.sol

24:         owner = msg.sender;

```

### <a name="GAS-4"></a>[GAS-4] Functions guaranteed to revert when called by normal users can be marked `payable`
If a function modifier such as `onlyOwner` is used, the function will revert if a normal user tries to pay the function. Marking the function as `payable` will lower the gas cost for legitimate callers because the compiler will not include checks for whether a payment was provided.

*Instances (1)*:
```solidity
File: OutdatedCompilerVersionFixed.sol

35:     function calculateTotalExpense() external view onlyOwner returns (uint256) {

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

*Instances (2)*:
```solidity
File: OutdatedCompilerVersionFixed.sol

32:         _expensesCount++;

37:         for (uint256 index = 0; index < _expensesCount; index++) {

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
File: OutdatedCompilerVersionFixed.sol

37:         for (uint256 index = 0; index < _expensesCount; index++) {

```

### <a name="NC-1"></a>[NC-1] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (2)*:
```solidity
File: OutdatedCompilerVersionFixed.sol

27:     function registerExpense(uint256 value, uint256 expenseId)

35:     function calculateTotalExpense() external view onlyOwner returns (uint256) {

```

### <a name="NC-2"></a>[NC-2] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (1)*:
```solidity
File: OutdatedCompilerVersionFixed.sol

27:     function registerExpense(uint256 value, uint256 expenseId)

```

### <a name="NC-3"></a>[NC-3] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (1)*:
```solidity
File: OutdatedCompilerVersionFixed.sol

7:     mapping(uint256 => Expense) private _expenses;

```

### <a name="NC-4"></a>[NC-4] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (1)*:
```solidity
File: OutdatedCompilerVersionFixed.sol

6:     address private owner;

```

### <a name="NC-5"></a>[NC-5] Variables need not be initialized to zero
The default value for variables is zero, so initializing them to zero is superfluous.

*Instances (1)*:
```solidity
File: OutdatedCompilerVersionFixed.sol

37:         for (uint256 index = 0; index < _expensesCount; index++) {

```

