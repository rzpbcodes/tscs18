# Report

| |Issue|Instances|
|-|:-|:-:|
| [L-1](#L-1) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [GAS-1](#GAS-1) | State variables only set in the constructor should be declared `immutable` | 1 |
| [GAS-2](#GAS-2) | Use != 0 instead of > 0 for unsigned integer comparison | 1 |
| [NC-1](#NC-1) | `require()` should be used instead of `assert()` | 1 |
| [NC-2](#NC-2) | NatSpec is completely non-existent on functions that should have them | 2 |
| [NC-3](#NC-3) | Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor | 3 |
| [NC-4](#NC-4) | Consider using named mappings | 1 |
| [NC-5](#NC-5) | `require()` / `revert()` statements should have descriptive reason strings | 2 |
| [NC-6](#NC-6) | Internal and private variables and functions names should begin with an underscore | 3 |



### <a name="L-1"></a>[L-1] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: UnexpectedAssertSendFixed.sol

2: pragma solidity 0.8.17;

```

### <a name="GAS-1"></a>[GAS-1] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (1)*:
```solidity
File: UnexpectedAssertSendFixed.sol

10:         owner = msg.sender;

```

### <a name="GAS-2"></a>[GAS-2] Use != 0 instead of > 0 for unsigned integer comparison

*Instances (1)*:
```solidity
File: UnexpectedAssertSendFixed.sol

21:         require(bids[msg.sender] > 0);

```

### <a name="NC-1"></a>[NC-1] `require()` should be used instead of `assert()`
Prior to solidity version 0.8.0, hitting an assert consumes the **remainder of the transaction's available gas** rather than returning it, as `require()`/`revert()` do. `assert()` should be avoided even past solidity version 0.8.0 as its [documentation](https://docs.soliditylang.org/en/v0.8.14/control-structures.html#panic-via-assert-and-error-via-require) states that "The assert function creates an error of type Panic(uint256). ... Properly functioning code should never create a Panic, not even on invalid external input. If this happens, then there is a bug in your contract which you should fix. Additionally, a require statement (or a custom error) are more friendly in terms of understanding what happened."

*Instances (1)*:
```solidity
File: UnexpectedAssertSendFixed.sol

24:         assert(payable(msg.sender).send(bids[msg.sender]));

```

### <a name="NC-2"></a>[NC-2] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (2)*:
```solidity
File: UnexpectedAssertSendFixed.sol

13:     function bid() external payable {

20:     function withdraw() external {

```

### <a name="NC-3"></a>[NC-3] Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor
If a function is supposed to be access-controlled, a `modifier` should be used instead of a `require/if` statement for more readability.

*Instances (3)*:
```solidity
File: UnexpectedAssertSendFixed.sol

21:         require(bids[msg.sender] > 0);

22:         require(msg.sender != maxBidder);

24:         assert(payable(msg.sender).send(bids[msg.sender]));

```

### <a name="NC-4"></a>[NC-4] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (1)*:
```solidity
File: UnexpectedAssertSendFixed.sol

5:     mapping(address => uint) bids;

```

### <a name="NC-5"></a>[NC-5] `require()` / `revert()` statements should have descriptive reason strings

*Instances (2)*:
```solidity
File: UnexpectedAssertSendFixed.sol

21:         require(bids[msg.sender] > 0);

22:         require(msg.sender != maxBidder);

```

### <a name="NC-6"></a>[NC-6] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (3)*:
```solidity
File: UnexpectedAssertSendFixed.sol

5:     mapping(address => uint) bids;

6:     address maxBidder;

7:     address owner;

```

