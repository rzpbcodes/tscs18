# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | Centralization Risk for trusted owners | 1 |
| [L-1](#L-1) | Division by zero not prevented | 1 |
| [L-2](#L-2) | Empty `receive()/payable fallback()` function does not authenticate requests | 1 |
| [L-3](#L-3) | External calls in an un-bounded `for-`loop may result in a DOS | 1 |
| [L-4](#L-4) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [GAS-1](#GAS-1) | State variables should be cached in stack variables rather than re-reading them from storage | 1 |
| [GAS-2](#GAS-2) | For Operations that will not overflow, you could use unchecked | 6 |
| [GAS-3](#GAS-3) | State variables only set in the constructor should be declared `immutable` | 1 |
| [GAS-4](#GAS-4) | Functions guaranteed to revert when called by normal users can be marked `payable` | 1 |
| [GAS-5](#GAS-5) | `++i` costs less gas compared to `i++` or `i += 1` (same for `--i` vs `i--` or `i -= 1`) | 1 |
| [GAS-6](#GAS-6) | Use != 0 instead of > 0 for unsigned integer comparison | 1 |
| [NC-1](#NC-1) | Functions should not be longer than 50 lines | 2 |
| [NC-2](#NC-2) | Missing Event for critical parameters change | 1 |
| [NC-3](#NC-3) | NatSpec is completely non-existent on functions that should have them | 3 |
| [NC-4](#NC-4) | Consider using named mappings | 1 |
| [NC-5](#NC-5) | `require()` / `revert()` statements should have descriptive reason strings | 2 |
| [NC-6](#NC-6) | Internal and private variables and functions names should begin with an underscore | 1 |



### <a name="M-1"></a>[M-1] Centralization Risk for trusted owners

#### Impact:
Contracts have owners with privileged rights to perform admin tasks and need to be trusted to not perform malicious updates or drain funds.

*Instances (1)*:
```solidity
File: DoSWithGasLimitFixed.sol

51:     function reset() external onlyOwner {

```

### <a name="L-1"></a>[L-1] Division by zero not prevented
The divisions below take an input parameter which does not have any zero-value checks, which may lead to the functions reverting when zero is passed.

*Instances (1)*:
```solidity
File: DoSWithGasLimitFixed.sol

39:             _benefactorShare = address(this).balance / benefactorsCount;

```

### <a name="L-2"></a>[L-2] Empty `receive()/payable fallback()` function does not authenticate requests
If the intention is for the Ether to be used, the function should call another function, otherwise it should revert (e.g. require(msg.sender == address(weth))). Having no access control on the function means that someone may send Ether to the contract, and have no way to get anything back out, which is a loss of funds. If the concern is having to spend a small amount of gas to check the sender against an immutable address, the code should at least have a function to rescue unused Ether.

*Instances (1)*:
```solidity
File: DoSWithGasLimitFixed.sol

25:     receive() external payable {}

```

### <a name="L-3"></a>[L-3] External calls in an un-bounded `for-`loop may result in a DOS
Consider limiting the number of iterations in for-loops that make external calls

*Instances (1)*:
```solidity
File: DoSWithGasLimitFixed.sol

46:             bool success = _benefactors[index].send(_benefactorShare);

```

### <a name="L-4"></a>[L-4] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: DoSWithGasLimitFixed.sol

3: pragma solidity 0.8.17;

```

### <a name="GAS-1"></a>[GAS-1] State variables should be cached in stack variables rather than re-reading them from storage
The instances below point to the second+ access of a state variable within a function. Caching of a state variable replaces each Gwarmaccess (100 gas) with a much cheaper stack read. Other less obvious fixes/optimizations include having local memory caches of state variable structs, or having local caches of state variable contracts/addresses.

*Saves 100 gas per instance*

*Instances (1)*:
```solidity
File: DoSWithGasLimitFixed.sol

48:         _lastBenefactorIndex = _lastBenefactorIndex + currentSliceCount;

```

### <a name="GAS-2"></a>[GAS-2] For Operations that will not overflow, you could use unchecked

*Instances (6)*:
```solidity
File: DoSWithGasLimitFixed.sol

28:         benefactorsCount = benefactorsCount + 1;

37:         require(_lastBenefactorIndex + currentSliceCount < benefactorsCount);

39:             _benefactorShare = address(this).balance / benefactorsCount;

43:             index < _lastBenefactorIndex + currentSliceCount;

44:             index++

48:         _lastBenefactorIndex = _lastBenefactorIndex + currentSliceCount;

```

### <a name="GAS-3"></a>[GAS-3] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (1)*:
```solidity
File: DoSWithGasLimitFixed.sol

21:         owner = msg.sender;

```

### <a name="GAS-4"></a>[GAS-4] Functions guaranteed to revert when called by normal users can be marked `payable`
If a function modifier such as `onlyOwner` is used, the function will revert if a normal user tries to pay the function. Marking the function as `payable` will lower the gas cost for legitimate callers because the compiler will not include checks for whether a payment was provided.

*Instances (1)*:
```solidity
File: DoSWithGasLimitFixed.sol

51:     function reset() external onlyOwner {

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
File: DoSWithGasLimitFixed.sol

44:             index++

```

### <a name="GAS-6"></a>[GAS-6] Use != 0 instead of > 0 for unsigned integer comparison

*Instances (1)*:
```solidity
File: DoSWithGasLimitFixed.sol

36:         require(benefactorsCount > 0);

```

### <a name="NC-1"></a>[NC-1] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (2)*:
```solidity
File: DoSWithGasLimitFixed.sol

27:     function registerBenefactor(address payable benefactor) external {

32:     function distributeToBenefactors(uint256 currentSliceCount)

```

### <a name="NC-2"></a>[NC-2] Missing Event for critical parameters change
Events help non-contract tools to track changes, and events prevent users from being surprised by changes.

*Instances (1)*:
```solidity
File: DoSWithGasLimitFixed.sol

51:     function reset() external onlyOwner {
            require(
                _lastBenefactorIndex == benefactorsCount,
                "Not all benefactors received their share"
            );
            _lastBenefactorIndex = 0;
            benefactorsCount = 0;
            _benefactorShare = 0;

```

### <a name="NC-3"></a>[NC-3] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (3)*:
```solidity
File: DoSWithGasLimitFixed.sol

27:     function registerBenefactor(address payable benefactor) external {

32:     function distributeToBenefactors(uint256 currentSliceCount)

51:     function reset() external onlyOwner {

```

### <a name="NC-4"></a>[NC-4] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (1)*:
```solidity
File: DoSWithGasLimitFixed.sol

7:     mapping(uint256 => address payable) private _benefactors;

```

### <a name="NC-5"></a>[NC-5] `require()` / `revert()` statements should have descriptive reason strings

*Instances (2)*:
```solidity
File: DoSWithGasLimitFixed.sol

36:         require(benefactorsCount > 0);

37:         require(_lastBenefactorIndex + currentSliceCount < benefactorsCount);

```

### <a name="NC-6"></a>[NC-6] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (1)*:
```solidity
File: DoSWithGasLimitFixed.sol

8:     address private owner;

```

