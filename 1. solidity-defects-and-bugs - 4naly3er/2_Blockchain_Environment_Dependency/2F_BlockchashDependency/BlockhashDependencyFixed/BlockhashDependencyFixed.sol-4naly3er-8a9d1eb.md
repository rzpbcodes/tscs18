# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | Centralization Risk for trusted owners | 1 |
| [M-2](#M-2) | `call()` should be used instead of `transfer()` on an `address payable` | 2 |
| [L-1](#L-1) | `abi.encodePacked()` should not be used with dynamic types when passing the result to a hash function such as `keccak256()` | 1 |
| [L-2](#L-2) | Empty Function Body - Consider commenting why | 2 |
| [L-3](#L-3) | Empty `receive()/payable fallback()` function does not authenticate requests | 1 |
| [L-4](#L-4) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [L-5](#L-5) | Unsafe ERC20 operation(s) | 2 |
| [GAS-1](#GAS-1) | Using bools for storage incurs overhead | 1 |
| [GAS-2](#GAS-2) | Use calldata instead of memory for function arguments that do not get mutated | 2 |
| [GAS-3](#GAS-3) | For Operations that will not overflow, you could use unchecked | 3 |
| [GAS-4](#GAS-4) | Use Custom Errors instead of Revert Strings to save Gas | 1 |
| [GAS-5](#GAS-5) | State variables only set in the constructor should be declared `immutable` | 1 |
| [GAS-6](#GAS-6) | Functions guaranteed to revert when called by normal users can be marked `payable` | 1 |
| [NC-1](#NC-1) | Use `string.concat()` or `bytes.concat()` instead of `abi.encodePacked` | 1 |
| [NC-2](#NC-2) | `constant`s should be defined rather than using magic numbers | 3 |
| [NC-3](#NC-3) | Control structures do not follow the Solidity Style Guide | 3 |
| [NC-4](#NC-4) | Default Visibility for constants | 1 |
| [NC-5](#NC-5) | Event missing indexed field | 2 |
| [NC-6](#NC-6) | Function ordering does not follow the Solidity style guide | 1 |
| [NC-7](#NC-7) | Functions should not be longer than 50 lines | 1 |
| [NC-8](#NC-8) | NatSpec is completely non-existent on functions that should have them | 4 |
| [NC-9](#NC-9) | Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor | 1 |
| [NC-10](#NC-10) | Consider using named mappings | 1 |
| [NC-11](#NC-11) | Adding a `return` statement when the function defines a named return variable, is redundant | 1 |
| [NC-12](#NC-12) | `require()` / `revert()` statements should have descriptive reason strings | 1 |
| [NC-13](#NC-13) | Use scientific notation for readability reasons for large multiples of ten | 1 |
| [NC-14](#NC-14) | Use Underscores for Number Literals (add an underscore every 3 digits) | 1 |
| [NC-15](#NC-15) | Internal and private variables and functions names should begin with an underscore | 2 |
| [NC-16](#NC-16) | Event is missing `indexed` fields | 2 |
| [NC-17](#NC-17) | `public` functions not called by the contract should be declared `external` instead | 1 |
| [NC-18](#NC-18) | Variables need not be initialized to zero | 1 |



### <a name="M-1"></a>[M-1] Centralization Risk for trusted owners

#### Impact:
Contracts have owners with privileged rights to perform admin tasks and need to be trusted to not perform malicious updates or drain funds.

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

93:     function chooseWinner() external onlyOwner {

```

### <a name="M-2"></a>[M-2] `call()` should be used instead of `transfer()` on an `address payable`
The use of the deprecated `transfer()` function for an address may make the transaction fail due to the 2300 gas stipend

*Instances (2)*:
```solidity
File: BlockhashDependencyFixed.sol

101:         payable(_contenders[winnerIndex]).transfer(

104:         payable(_owner).transfer(1 ether);

```

### <a name="L-1"></a>[L-1] `abi.encodePacked()` should not be used with dynamic types when passing the result to a hash function such as `keccak256()`
Use `abi.encode()` instead which will pad items to 32 bytes, which will [prevent hash collisions](https://docs.soliditylang.org/en/v0.8.13/abi-spec.html#non-standard-packed-mode) (e.g. `abi.encodePacked(0x123,0x456)` => `0x123456` => `abi.encodePacked(0x1,0x23456)`, but `abi.encode(0x123,0x456)` => `0x0...1230...456`). "Unless there is a compelling reason, `abi.encode` should be preferred". If there is only one argument to `abi.encodePacked()` it can often be cast to `bytes()` or `bytes32()` [instead](https://ethereum.stackexchange.com/questions/30912/how-to-compare-strings-in-solidity#answer-82739).
If all arguments are strings and or bytes, `bytes.concat()` should be used instead

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

87:             randVal = uint256(keccak256(abi.encodePacked(_result))) % ceiling;

```

### <a name="L-2"></a>[L-2] Empty Function Body - Consider commenting why

*Instances (2)*:
```solidity
File: BlockhashDependencyFixed.sol

44:     function provable_newRandomDSQuery(

50:     function provable_randomDS_proofVerify__returnCode(

```

### <a name="L-3"></a>[L-3] Empty `receive()/payable fallback()` function does not authenticate requests
If the intention is for the Ether to be used, the function should call another function, otherwise it should revert (e.g. require(msg.sender == address(weth))). Having no access control on the function means that someone may send Ether to the contract, and have no way to get anything back out, which is a loss of funds. If the concern is having to spend a small amount of gas to check the sender against an immutable address, the code should at least have a function to rescue unused Ether.

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

33:     receive() external payable {}

```

### <a name="L-4"></a>[L-4] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

2: pragma solidity 0.8.17;

```

### <a name="L-5"></a>[L-5] Unsafe ERC20 operation(s)

*Instances (2)*:
```solidity
File: BlockhashDependencyFixed.sol

101:         payable(_contenders[winnerIndex]).transfer(

104:         payable(_owner).transfer(1 ether);

```

### <a name="GAS-1"></a>[GAS-1] Using bools for storage incurs overhead
Use uint256(1) and uint256(2) for true/false to avoid a Gwarmaccess (100 gas), and to avoid Gsset (20000 gas) when changing from ‘false’ to ‘true’, after having been ‘true’ in the past. See [source](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/58f635312aa21f947cae5f8578638a85aa2519f5/contracts/security/ReentrancyGuard.sol#L23-L27).

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

13:     bool public randValSet;

```

### <a name="GAS-2"></a>[GAS-2] Use calldata instead of memory for function arguments that do not get mutated
When a function with a `memory` array is called externally, the `abi.decode()` step has to use a for-loop to copy each index of the `calldata` to the `memory` index. Each iteration of this for-loop costs at least 60 gas (i.e. `60 * <mem_array>.length`). Using `calldata` directly bypasses this loop. 

If the array is passed to an `internal` function which passes the array to another internal function where the array is modified and therefore `memory` is used in the `external` call, it's still more gas-efficient to use `calldata` when the `external` function uses modifiers, since the modifiers may prevent the internal functions from being called. Structs have the same overhead as an array of length one. 

 *Saves 60 gas per instance*

*Instances (2)*:
```solidity
File: BlockhashDependencyFixed.sol

73:         string memory _result,

74:         bytes memory _proof

```

### <a name="GAS-3"></a>[GAS-3] For Operations that will not overflow, you could use unchecked

*Instances (3)*:
```solidity
File: BlockhashDependencyFixed.sol

41:         _contendersCount = _contendersCount + 1;

86:             uint256 ceiling = (256**NUM_RANDOM_BYTES_REQUESTED) - 1;

102:             address(this).balance - 1 ether

```

### <a name="GAS-4"></a>[GAS-4] Use Custom Errors instead of Revert Strings to save Gas
Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas

Additionally, custom errors can be used inside and outside of contracts (including interfaces and libraries).

Source: <https://blog.soliditylang.org/2021/04/21/custom-errors/>:

> Starting from [Solidity v0.8.4](https://github.com/ethereum/solidity/releases/tag/v0.8.4), there is a convenient and gas-efficient way to explain to users why an operation failed through the use of custom errors. Until now, you could already use strings to give more information about failures (e.g., `revert("Insufficient funds.");`), but they are rather expensive, especially when it comes to deploy cost, and it is difficult to use dynamic information in them.

Consider replacing **all revert strings** with custom errors in the solution, and particularly those that have multiple occurrences:

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

94:         require(_contendersCount >= 2, "Not enough contenders registered");

```

### <a name="GAS-5"></a>[GAS-5] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

28:         _owner = msg.sender;

```

### <a name="GAS-6"></a>[GAS-6] Functions guaranteed to revert when called by normal users can be marked `payable`
If a function modifier such as `onlyOwner` is used, the function will revert if a normal user tries to pay the function. Marking the function as `payable` will lower the gas cost for legitimate callers because the compiler will not include checks for whether a payment was provided.

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

93:     function chooseWinner() external onlyOwner {

```

### <a name="NC-1"></a>[NC-1] Use `string.concat()` or `bytes.concat()` instead of `abi.encodePacked`
Solidity version 0.8.4 introduces `bytes.concat()` (vs `abi.encodePacked(<bytes>,<bytes>)`)

Solidity version 0.8.12 introduces `string.concat()` (vs `abi.encodePacked(<str>,<str>), which catches concatenation errors (in the event of a `bytes` data mixed in the concatenation)`)

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

87:             randVal = uint256(keccak256(abi.encodePacked(_result))) % ceiling;

```

### <a name="NC-2"></a>[NC-2] `constant`s should be defined rather than using magic numbers
Even [assembly](https://github.com/code-423n4/2022-05-opensea-seaport/blob/9d7ce4d08bf3c3010304a0476a785c70c0e90ae7/contracts/lib/TokenTransferrer.sol#L35-L39) can benefit from using readable constants instead of hex/numeric literals

*Instances (3)*:
```solidity
File: BlockhashDependencyFixed.sol

37:             msg.value >= 1 ether && msg.value < 2 ether,

66:         uint256 GAS = 200000;

94:         require(_contendersCount >= 2, "Not enough contenders registered");

```

### <a name="NC-3"></a>[NC-3] Control structures do not follow the Solidity Style Guide
See the [control structures](https://docs.soliditylang.org/en/latest/style-guide.html#control-structures) section of the Solidity Style Guide

*Instances (3)*:
```solidity
File: BlockhashDependencyFixed.sol

50:     function provable_randomDS_proofVerify__returnCode(

77:         if (

78:             provable_randomDS_proofVerify__returnCode(

```

### <a name="NC-4"></a>[NC-4] Default Visibility for constants
Some constants are using the default visibility. For readability, consider explicitly declaring them as `internal`.

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

14:     uint256 constant NUM_RANDOM_BYTES_REQUESTED = 7;

```

### <a name="NC-5"></a>[NC-5] Event missing indexed field
Index event fields make the field more quickly accessible [to off-chain tools](https://ethereum.stackexchange.com/questions/40396/can-somebody-please-explain-the-concept-of-event-indexing) that parse events. This is especially useful when it comes to filtering based on an address. However, note that each index field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Where applicable, each `event` should use three `indexed` fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three applicable fields, all of the applicable fields should be indexed.

*Instances (2)*:
```solidity
File: BlockhashDependencyFixed.sol

16:     event LogNewProvableQuery(string description);

17:     event GeneratedRandom(uint256 v);

```

### <a name="NC-6"></a>[NC-6] Function ordering does not follow the Solidity style guide
According to the [Solidity style guide](https://docs.soliditylang.org/en/v0.8.17/style-guide.html#order-of-functions), functions should be laid out in the following order :`constructor()`, `receive()`, `fallback()`, `external`, `public`, `internal`, `private`, but the cases below do not follow this pattern

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

1: 
   Current order:
   external register
   internal provable_newRandomDSQuery
   internal provable_randomDS_proofVerify__returnCode
   public provable_cbAddress
   external getRandomValue
   public __callback
   external chooseWinner
   
   Suggested order:
   external register
   external getRandomValue
   external chooseWinner
   public provable_cbAddress
   public __callback
   internal provable_newRandomDSQuery
   internal provable_randomDS_proofVerify__returnCode

```

### <a name="NC-7"></a>[NC-7] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

50:     function provable_randomDS_proofVerify__returnCode(

```

### <a name="NC-8"></a>[NC-8] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (4)*:
```solidity
File: BlockhashDependencyFixed.sol

35:     function register() external payable {

64:     function getRandomValue() external payable {

71:     function __callback(

93:     function chooseWinner() external onlyOwner {

```

### <a name="NC-9"></a>[NC-9] Use a `modifier` instead of a `require/if` statement for a special `msg.sender` actor
If a function is supposed to be access-controlled, a `modifier` should be used instead of a `require/if` statement for more readability.

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

76:         require(msg.sender == provable_cbAddress());

```

### <a name="NC-10"></a>[NC-10] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

10:     mapping(uint256 => address) public _contenders;

```

### <a name="NC-11"></a>[NC-11] Adding a `return` statement when the function defines a named return variable, is redundant

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

56:     function provable_cbAddress()
            public
            pure
            returns (address _callbackAddress)
        {
            return _callbackAddress;

```

### <a name="NC-12"></a>[NC-12] `require()` / `revert()` statements should have descriptive reason strings

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

76:         require(msg.sender == provable_cbAddress());

```

### <a name="NC-13"></a>[NC-13] Use scientific notation for readability reasons for large multiples of ten
The more a number has zeros, the harder it becomes to see with the eyes if it's the intended value. To ease auditing and bug bounty hunting, consider using the scientific notation

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

66:         uint256 GAS = 200000;

```

### <a name="NC-14"></a>[NC-14] Use Underscores for Number Literals (add an underscore every 3 digits)

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

66:         uint256 GAS = 200000;

```

### <a name="NC-15"></a>[NC-15] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (2)*:
```solidity
File: BlockhashDependencyFixed.sol

44:     function provable_newRandomDSQuery(

50:     function provable_randomDS_proofVerify__returnCode(

```

### <a name="NC-16"></a>[NC-16] Event is missing `indexed` fields
Index event fields make the field more quickly accessible to off-chain tools that parse events. However, note that each index field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Each event should use three indexed fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three fields, all of the fields should be indexed.

*Instances (2)*:
```solidity
File: BlockhashDependencyFixed.sol

16:     event LogNewProvableQuery(string description);

17:     event GeneratedRandom(uint256 v);

```

### <a name="NC-17"></a>[NC-17] `public` functions not called by the contract should be declared `external` instead

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

71:     function __callback(

```

### <a name="NC-18"></a>[NC-18] Variables need not be initialized to zero
The default value for variables is zero, so initializing them to zero is superfluous.

*Instances (1)*:
```solidity
File: BlockhashDependencyFixed.sol

65:         uint256 DELAY = 0;

```

