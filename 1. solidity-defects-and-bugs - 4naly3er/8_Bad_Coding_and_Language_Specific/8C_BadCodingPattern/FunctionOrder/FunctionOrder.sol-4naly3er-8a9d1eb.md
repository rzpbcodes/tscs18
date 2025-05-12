# Report

| |Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | Empty Function Body - Consider commenting why | 4 |
| [L-2](#L-2) | Empty `receive()/payable fallback()` function does not authenticate requests | 1 |
| [L-3](#L-3) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [GAS-1](#GAS-1) | `internal` functions not called by the contract should be removed | 1 |
| [NC-1](#NC-1) | Function ordering does not follow the Solidity style guide | 1 |
| [NC-2](#NC-2) | NatSpec is completely non-existent on functions that should have them | 2 |
| [NC-3](#NC-3) | Internal and private variables and functions names should begin with an underscore | 2 |
| [NC-4](#NC-4) | `public` functions not called by the contract should be declared `external` instead | 1 |



### <a name="L-1"></a>[L-1] Empty Function Body - Consider commenting why

*Instances (4)*:
```solidity
File: FunctionOrder.sol

6:     function somethingPrivate() private {}

8:     function somethingInternal() internal {}

10:     function somethingPublic() public {}

12:     function somethingExternal() external {}

```

### <a name="L-2"></a>[L-2] Empty `receive()/payable fallback()` function does not authenticate requests
If the intention is for the Ether to be used, the function should call another function, otherwise it should revert (e.g. require(msg.sender == address(weth))). Having no access control on the function means that someone may send Ether to the contract, and have no way to get anything back out, which is a loss of funds. If the concern is having to spend a small amount of gas to check the sender against an immutable address, the code should at least have a function to rescue unused Ether.

*Instances (1)*:
```solidity
File: FunctionOrder.sol

14:     receive() external payable {}

```

### <a name="L-3"></a>[L-3] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: FunctionOrder.sol

2: pragma solidity 0.8.17;

```

### <a name="GAS-1"></a>[GAS-1] `internal` functions not called by the contract should be removed
If the functions are required by an interface, the contract should inherit from that interface and use the `override` keyword

*Instances (1)*:
```solidity
File: FunctionOrder.sol

8:     function somethingInternal() internal {}

```

### <a name="NC-1"></a>[NC-1] Function ordering does not follow the Solidity style guide
According to the [Solidity style guide](https://docs.soliditylang.org/en/v0.8.17/style-guide.html#order-of-functions), functions should be laid out in the following order :`constructor()`, `receive()`, `fallback()`, `external`, `public`, `internal`, `private`, but the cases below do not follow this pattern

*Instances (1)*:
```solidity
File: FunctionOrder.sol

1: 
   Current order:
   private somethingPrivate
   internal somethingInternal
   public somethingPublic
   external somethingExternal
   
   Suggested order:
   external somethingExternal
   public somethingPublic
   internal somethingInternal
   private somethingPrivate

```

### <a name="NC-2"></a>[NC-2] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (2)*:
```solidity
File: FunctionOrder.sol

10:     function somethingPublic() public {}

12:     function somethingExternal() external {}

```

### <a name="NC-3"></a>[NC-3] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (2)*:
```solidity
File: FunctionOrder.sol

6:     function somethingPrivate() private {}

8:     function somethingInternal() internal {}

```

### <a name="NC-4"></a>[NC-4] `public` functions not called by the contract should be declared `external` instead

*Instances (1)*:
```solidity
File: FunctionOrder.sol

10:     function somethingPublic() public {}

```

