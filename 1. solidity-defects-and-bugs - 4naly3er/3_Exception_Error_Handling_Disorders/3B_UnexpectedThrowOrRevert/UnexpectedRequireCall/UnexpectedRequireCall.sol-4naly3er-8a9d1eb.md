# Report

| |Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | External call recipient may consume all transaction gas | 1 |
| [L-2](#L-2) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [GAS-1](#GAS-1) | State variables should be cached in stack variables rather than re-reading them from storage | 1 |
| [GAS-2](#GAS-2) | For Operations that will not overflow, you could use unchecked | 5 |
| [GAS-3](#GAS-3) | Use Custom Errors instead of Revert Strings to save Gas | 1 |
| [GAS-4](#GAS-4) | State variables only set in the constructor should be declared `immutable` | 1 |
| [GAS-5](#GAS-5) | `++i` costs less gas compared to `i++` or `i += 1` (same for `--i` vs `i--` or `i -= 1`) | 1 |
| [GAS-6](#GAS-6) | Increments/decrements can be unchecked in for-loops | 1 |
| [NC-1](#NC-1) | Change uint to uint256 | 2 |
| [NC-2](#NC-2) | NatSpec is completely non-existent on functions that should have them | 2 |
| [NC-3](#NC-3) | Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor | 1 |
| [NC-4](#NC-4) | `require()` / `revert()` statements should have descriptive reason strings | 2 |
| [NC-5](#NC-5) | Internal and private variables and functions names should begin with an underscore | 4 |
| [NC-6](#NC-6) | Variables need not be initialized to zero | 1 |



### <a name="L-1"></a>[L-1] External call recipient may consume all transaction gas
There is no limit specified on the amount of gas used, so the recipient can use up all of the transaction's gas, causing it to revert. Use `addr.call{gas: <amount>}("")` or [this](https://github.com/nomad-xyz/ExcessivelySafeCall) library instead.

*Instances (1)*:
```solidity
File: UnexpectedRequireCall.sol

33:             (bool succ,) = payable(bidders[i]).call{value : bids[i]}("");

```

### <a name="L-2"></a>[L-2] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: UnexpectedRequireCall.sol

2: pragma solidity 0.8.17;

```

### <a name="GAS-1"></a>[GAS-1] State variables should be cached in stack variables rather than re-reading them from storage
The instances below point to the second+ access of a state variable within a function. Caching of a state variable replaces each Gwarmaccess (100 gas) with a much cheaper stack read. Other less obvious fixes/optimizations include having local memory caches of state variable structs, or having local caches of state variable contracts/addresses.

*Saves 100 gas per instance*

*Instances (1)*:
```solidity
File: UnexpectedRequireCall.sol

23:             len = len + 1;

```

### <a name="GAS-2"></a>[GAS-2] For Operations that will not overflow, you could use unchecked

*Instances (5)*:
```solidity
File: UnexpectedRequireCall.sol

19:             len = len + 1;

20:         } else if (msg.value > bids[len - 1]) {

23:             len = len + 1;

30:         require(owner == msg.sender); // onlyOwner

31:         for (uint i = 0; i < len; i++) { // arbitrary len is bad anyway

```

### <a name="GAS-3"></a>[GAS-3] Use Custom Errors instead of Revert Strings to save Gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

Additionally, custom errors can be used inside and outside of contracts (including interfaces and libraries).

Source: <https://blog.soliditylang.org/2021/04/21/custom-errors/>:

> Starting from [Solidity v0.8.4](https://github.com/ethereum/solidity/releases/tag/v0.8.4), there is a convenient and gas-efficient way to explain to users why an operation failed through the use of custom errors. Until now, you could already use strings to give more information about failures (e.g., `revert("Insufficient funds.");`), but they are rather expensive, especially when it comes to deploy cost, and it is difficult to use dynamic information in them.

Consider replacing **all revert strings** with custom errors in the solution, and particularly those that have multiple occurrences:

*Instances (1)*:
```solidity
File: UnexpectedRequireCall.sol

25:             revert("the bid is lower than the current highest bid");

```

### <a name="GAS-4"></a>[GAS-4] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (1)*:
```solidity
File: UnexpectedRequireCall.sol

11:         owner = msg.sender;

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
File: UnexpectedRequireCall.sol

31:         for (uint i = 0; i < len; i++) { // arbitrary len is bad anyway

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
File: UnexpectedRequireCall.sol

31:         for (uint i = 0; i < len; i++) { // arbitrary len is bad anyway

```

### <a name="NC-1"></a>[NC-1] Change uint to uint256
Throughout the code base, some variables are declared as `uint`. To favor explicitness, consider changing all instances of `uint` to `uint256`

*Instances (2)*:
```solidity
File: UnexpectedRequireCall.sol

7:     uint private len;

31:         for (uint i = 0; i < len; i++) { // arbitrary len is bad anyway

```

### <a name="NC-2"></a>[NC-2] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (2)*:
```solidity
File: UnexpectedRequireCall.sol

15:     function bid() external payable {

29:     function close() external {

```

### <a name="NC-3"></a>[NC-3] Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor
If a function is supposed to be access-controlled, a `modifier` should be used instead of a `require/if` statement for more readability.

*Instances (1)*:
```solidity
File: UnexpectedRequireCall.sol

30:         require(owner == msg.sender); // onlyOwner

```

### <a name="NC-4"></a>[NC-4] `require()` / `revert()` statements should have descriptive reason strings

*Instances (2)*:
```solidity
File: UnexpectedRequireCall.sol

30:         require(owner == msg.sender); // onlyOwner

34:             require(succ);

```

### <a name="NC-5"></a>[NC-5] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (4)*:
```solidity
File: UnexpectedRequireCall.sol

5:     address[] private bidders;

6:     uint256[] private bids;

7:     uint private len;

8:     address owner;

```

### <a name="NC-6"></a>[NC-6] Variables need not be initialized to zero
The default value for variables is zero, so initializing them to zero is superfluous.

*Instances (1)*:
```solidity
File: UnexpectedRequireCall.sol

31:         for (uint i = 0; i < len; i++) { // arbitrary len is bad anyway

```

