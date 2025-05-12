# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | Centralization Risk for trusted owners | 1 |
| [M-2](#M-2) | `call()` should be used instead of `transfer()` on an `address payable` | 1 |
| [L-1](#L-1) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [L-2](#L-2) | Unsafe ERC20 operation(s) | 1 |
| [GAS-1](#GAS-1) | `a = a + b` is more gas effective than `a += b` for state variables (excluding arrays and mappings) | 1 |
| [GAS-2](#GAS-2) | For Operations that will not overflow, you could use unchecked | 4 |
| [GAS-3](#GAS-3) | State variables only set in the constructor should be declared `immutable` | 2 |
| [GAS-4](#GAS-4) | Functions guaranteed to revert when called by normal users can be marked `payable` | 1 |
| [NC-1](#NC-1) | Change uint to uint256 | 4 |
| [NC-2](#NC-2) | NatSpec is completely non-existent on functions that should have them | 2 |
| [NC-3](#NC-3) | Consider using named mappings | 1 |
| [NC-4](#NC-4) | `require()` / `revert()` statements should have descriptive reason strings | 2 |
| [NC-5](#NC-5) | Internal and private variables and functions names should begin with an underscore | 3 |
| [NC-6](#NC-6) | `public` functions not called by the contract should be declared `external` instead | 1 |



### <a name="M-1"></a>[M-1] Centralization Risk for trusted owners

#### Impact:
Contracts have owners with privileged rights to perform admin tasks and need to be trusted to not perform malicious updates or drain funds.

*Instances (1)*:
```solidity
File: StrictBalanceEqualityRequireFixed.sol

33:    function withdraw() public onlyOwner {

```

### <a name="M-2"></a>[M-2] `call()` should be used instead of `transfer()` on an `address payable`
The use of the deprecated `transfer()` function for an address may make the transaction fail due to the 2300 gas stipend

*Instances (1)*:
```solidity
File: StrictBalanceEqualityRequireFixed.sol

34:        payable(owner).transfer(address(this).balance);

```

### <a name="L-1"></a>[L-1] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: StrictBalanceEqualityRequireFixed.sol

2: pragma solidity ^0.8.17;

```

### <a name="L-2"></a>[L-2] Unsafe ERC20 operation(s)

*Instances (1)*:
```solidity
File: StrictBalanceEqualityRequireFixed.sol

34:        payable(owner).transfer(address(this).balance);

```

### <a name="GAS-1"></a>[GAS-1] `a = a + b` is more gas effective than `a += b` for state variables (excluding arrays and mappings)
This saves **16 gas per instance.**

*Instances (1)*:
```solidity
File: StrictBalanceEqualityRequireFixed.sol

28:            balance[msg.sender] += amount;

```

### <a name="GAS-2"></a>[GAS-2] For Operations that will not overflow, you could use unchecked

*Instances (4)*:
```solidity
File: StrictBalanceEqualityRequireFixed.sol

26:        require(amount * tokenPrice == msg.value);

27:        if (amount * tokenPrice == msg.value) {

28:            balance[msg.sender] += amount;

29:            availableSupply -= amount;

```

### <a name="GAS-3"></a>[GAS-3] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (2)*:
```solidity
File: StrictBalanceEqualityRequireFixed.sol

19:         owner = msg.sender;

20:         tokenPrice = _tokenPrice;

```

### <a name="GAS-4"></a>[GAS-4] Functions guaranteed to revert when called by normal users can be marked `payable`
If a function modifier such as `onlyOwner` is used, the function will revert if a normal user tries to pay the function. Marking the function as `payable` will lower the gas cost for legitimate callers because the compiler will not include checks for whether a payment was provided.

*Instances (1)*:
```solidity
File: StrictBalanceEqualityRequireFixed.sol

33:    function withdraw() public onlyOwner {

```

### <a name="NC-1"></a>[NC-1] Change uint to uint256
Throughout the code base, some variables are declared as `uint`. To favor explicitness, consider changing all instances of `uint` to `uint256`

*Instances (4)*:
```solidity
File: StrictBalanceEqualityRequireFixed.sol

7:     uint private tokenPrice;

8:     uint private availableSupply;

18:     constructor(uint _tokenPrice, uint _availableSupply) {

24:    function buy(uint amount) external payable {

```

### <a name="NC-2"></a>[NC-2] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (2)*:
```solidity
File: StrictBalanceEqualityRequireFixed.sol

24:    function buy(uint amount) external payable {

33:    function withdraw() public onlyOwner {

```

### <a name="NC-3"></a>[NC-3] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (1)*:
```solidity
File: StrictBalanceEqualityRequireFixed.sol

6:     mapping(address => uint) public balance;

```

### <a name="NC-4"></a>[NC-4] `require()` / `revert()` statements should have descriptive reason strings

*Instances (2)*:
```solidity
File: StrictBalanceEqualityRequireFixed.sol

25:        require(amount <= availableSupply);

26:        require(amount * tokenPrice == msg.value);

```

### <a name="NC-5"></a>[NC-5] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (3)*:
```solidity
File: StrictBalanceEqualityRequireFixed.sol

5:     address private owner;

7:     uint private tokenPrice;

8:     uint private availableSupply;

```

### <a name="NC-6"></a>[NC-6] `public` functions not called by the contract should be declared `external` instead

*Instances (1)*:
```solidity
File: StrictBalanceEqualityRequireFixed.sol

33:    function withdraw() public onlyOwner {

```

