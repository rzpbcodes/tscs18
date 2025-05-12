# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | Centralization Risk for trusted owners | 1 |
| [M-2](#M-2) | `call()` should be used instead of `transfer()` on an `address payable` | 1 |
| [L-1](#L-1) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [L-2](#L-2) | Unsafe ERC20 operation(s) | 1 |
| [GAS-1](#GAS-1) | `a = a + b` is more gas effective than `a += b` for state variables (excluding arrays and mappings) | 1 |
| [GAS-2](#GAS-2) | For Operations that will not overflow, you could use unchecked | 3 |
| [GAS-3](#GAS-3) | Use Custom Errors instead of Revert Strings to save Gas | 1 |
| [GAS-4](#GAS-4) | State variables only set in the constructor should be declared `immutable` | 2 |
| [GAS-5](#GAS-5) | Functions guaranteed to revert when called by normal users can be marked `payable` | 1 |
| [NC-1](#NC-1) | Change uint to uint256 | 4 |
| [NC-2](#NC-2) | NatSpec is completely non-existent on functions that should have them | 2 |
| [NC-3](#NC-3) | Consider using named mappings | 1 |
| [NC-4](#NC-4) | `require()` / `revert()` statements should have descriptive reason strings | 1 |
| [NC-5](#NC-5) | Internal and private variables and functions names should begin with an underscore | 4 |
| [NC-6](#NC-6) | `public` functions not called by the contract should be declared `external` instead | 1 |



### <a name="M-1"></a>[M-1] Centralization Risk for trusted owners

#### Impact:
Contracts have owners with privileged rights to perform admin tasks and need to be trusted to not perform malicious updates or drain funds.

*Instances (1)*:
```solidity
File: StrictBalanceEqualityTokenFixed.sol

32:    function withdraw() public onlyOwner {

```

### <a name="M-2"></a>[M-2] `call()` should be used instead of `transfer()` on an `address payable`
The use of the deprecated `transfer()` function for an address may make the transaction fail due to the 2300 gas stipend

*Instances (1)*:
```solidity
File: StrictBalanceEqualityTokenFixed.sol

33:        payable(owner).transfer(address(this).balance);

```

### <a name="L-1"></a>[L-1] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: StrictBalanceEqualityTokenFixed.sol

2: pragma solidity ^0.8.17;

```

### <a name="L-2"></a>[L-2] Unsafe ERC20 operation(s)

*Instances (1)*:
```solidity
File: StrictBalanceEqualityTokenFixed.sol

33:        payable(owner).transfer(address(this).balance);

```

### <a name="GAS-1"></a>[GAS-1] `a = a + b` is more gas effective than `a += b` for state variables (excluding arrays and mappings)
This saves **16 gas per instance.**

*Instances (1)*:
```solidity
File: StrictBalanceEqualityTokenFixed.sol

27:            balance[msg.sender] += amount;

```

### <a name="GAS-2"></a>[GAS-2] For Operations that will not overflow, you could use unchecked

*Instances (3)*:
```solidity
File: StrictBalanceEqualityTokenFixed.sol

26:        if (amount * tokenPrice == msg.value) {

27:            balance[msg.sender] += amount;

28:            availableSupply -= amount;

```

### <a name="GAS-3"></a>[GAS-3] Use Custom Errors instead of Revert Strings to save Gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

Additionally, custom errors can be used inside and outside of contracts (including interfaces and libraries).

Source: <https://blog.soliditylang.org/2021/04/21/custom-errors/>:

> Starting from [Solidity v0.8.4](https://github.com/ethereum/solidity/releases/tag/v0.8.4), there is a convenient and gas-efficient way to explain to users why an operation failed through the use of custom errors. Until now, you could already use strings to give more information about failures (e.g., `revert("Insufficient funds.");`), but they are rather expensive, especially when it comes to deploy cost, and it is difficult to use dynamic information in them.

Consider replacing **all revert strings** with custom errors in the solution, and particularly those that have multiple occurrences:

*Instances (1)*:
```solidity
File: StrictBalanceEqualityTokenFixed.sol

29:        } else revert("did not provide an exact amount of wei");

```

### <a name="GAS-4"></a>[GAS-4] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (2)*:
```solidity
File: StrictBalanceEqualityTokenFixed.sol

19:         owner = msg.sender;

20:         tokenPrice = _tokenPrice;

```

### <a name="GAS-5"></a>[GAS-5] Functions guaranteed to revert when called by normal users can be marked `payable`
If a function modifier such as `onlyOwner` is used, the function will revert if a normal user tries to pay the function. Marking the function as `payable` will lower the gas cost for legitimate callers because the compiler will not include checks for whether a payment was provided.

*Instances (1)*:
```solidity
File: StrictBalanceEqualityTokenFixed.sol

32:    function withdraw() public onlyOwner {

```

### <a name="NC-1"></a>[NC-1] Change uint to uint256
Throughout the code base, some variables are declared as `uint`. To favor explicitness, consider changing all instances of `uint` to `uint256`

*Instances (4)*:
```solidity
File: StrictBalanceEqualityTokenFixed.sol

7:     uint private tokenPrice;

8:     uint private availableSupply;

18:     constructor(uint _tokenPrice, uint _availableSupply) {

24:    function buy(uint amount) external payable {

```

### <a name="NC-2"></a>[NC-2] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (2)*:
```solidity
File: StrictBalanceEqualityTokenFixed.sol

24:    function buy(uint amount) external payable {

32:    function withdraw() public onlyOwner {

```

### <a name="NC-3"></a>[NC-3] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (1)*:
```solidity
File: StrictBalanceEqualityTokenFixed.sol

6:     mapping(address => uint) balance;

```

### <a name="NC-4"></a>[NC-4] `require()` / `revert()` statements should have descriptive reason strings

*Instances (1)*:
```solidity
File: StrictBalanceEqualityTokenFixed.sol

25:        require(amount <= availableSupply);

```

### <a name="NC-5"></a>[NC-5] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (4)*:
```solidity
File: StrictBalanceEqualityTokenFixed.sol

5:     address private owner;

6:     mapping(address => uint) balance;

7:     uint private tokenPrice;

8:     uint private availableSupply;

```

### <a name="NC-6"></a>[NC-6] `public` functions not called by the contract should be declared `external` instead

*Instances (1)*:
```solidity
File: StrictBalanceEqualityTokenFixed.sol

32:    function withdraw() public onlyOwner {

```

