# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | Centralization Risk for trusted owners | 1 |
| [M-2](#M-2) | `call()` should be used instead of `transfer()` on an `address payable` | 1 |
| [L-1](#L-1) | Empty `receive()/payable fallback()` function does not authenticate requests | 1 |
| [L-2](#L-2) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [L-3](#L-3) | Unsafe ERC20 operation(s) | 1 |
| [GAS-1](#GAS-1) | State variables only set in the constructor should be declared `immutable` | 1 |
| [GAS-2](#GAS-2) | Functions guaranteed to revert when called by normal users can be marked `payable` | 1 |
| [NC-1](#NC-1) | NatSpec is completely non-existent on functions that should have them | 1 |
| [NC-2](#NC-2) | `public` functions not called by the contract should be declared `external` instead | 1 |



### <a name="M-1"></a>[M-1] Centralization Risk for trusted owners

#### Impact:
Contracts have owners with privileged rights to perform admin tasks and need to be trusted to not perform malicious updates or drain funds.

*Instances (1)*:
```solidity
File: HighConsumptionFunctionType.sol

22:     function transferBalance() public onlyOwner {

```

### <a name="M-2"></a>[M-2] `call()` should be used instead of `transfer()` on an `address payable`
The use of the deprecated `transfer()` function for an address may make the transaction fail due to the 2300 gas stipend

*Instances (1)*:
```solidity
File: HighConsumptionFunctionType.sol

23:         payable(_owner).transfer(address(this).balance);

```

### <a name="L-1"></a>[L-1] Empty `receive()/payable fallback()` function does not authenticate requests
If the intention is for the Ether to be used, the function should call another function, otherwise it should revert (e.g. require(msg.sender == address(weth))). Having no access control on the function means that someone may send Ether to the contract, and have no way to get anything back out, which is a loss of funds. If the concern is having to spend a small amount of gas to check the sender against an immutable address, the code should at least have a function to rescue unused Ether.

*Instances (1)*:
```solidity
File: HighConsumptionFunctionType.sol

20:     receive() external payable {}

```

### <a name="L-2"></a>[L-2] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: HighConsumptionFunctionType.sol

2: pragma solidity 0.8.17;

```

### <a name="L-3"></a>[L-3] Unsafe ERC20 operation(s)

*Instances (1)*:
```solidity
File: HighConsumptionFunctionType.sol

23:         payable(_owner).transfer(address(this).balance);

```

### <a name="GAS-1"></a>[GAS-1] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (1)*:
```solidity
File: HighConsumptionFunctionType.sol

17:         _owner = msg.sender;

```

### <a name="GAS-2"></a>[GAS-2] Functions guaranteed to revert when called by normal users can be marked `payable`
If a function modifier such as `onlyOwner` is used, the function will revert if a normal user tries to pay the function. Marking the function as `payable` will lower the gas cost for legitimate callers because the compiler will not include checks for whether a payment was provided.

*Instances (1)*:
```solidity
File: HighConsumptionFunctionType.sol

22:     function transferBalance() public onlyOwner {

```

### <a name="NC-1"></a>[NC-1] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (1)*:
```solidity
File: HighConsumptionFunctionType.sol

22:     function transferBalance() public onlyOwner {

```

### <a name="NC-2"></a>[NC-2] `public` functions not called by the contract should be declared `external` instead

*Instances (1)*:
```solidity
File: HighConsumptionFunctionType.sol

22:     function transferBalance() public onlyOwner {

```

