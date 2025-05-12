# Report

| |Issue|Instances|
|-|:-|:-:|
| [M-1](#M-1) | `call()` should be used instead of `transfer()` on an `address payable` | 1 |
| [L-1](#L-1) | `abi.encodePacked()` should not be used with dynamic types when passing the result to a hash function such as `keccak256()` | 1 |
| [L-2](#L-2) | Signature use at deadlines should be allowed | 1 |
| [L-3](#L-3) | Solidity version 0.8.20+ may not work on other chains due to `PUSH0` | 1 |
| [L-4](#L-4) | Unsafe ERC20 operation(s) | 1 |
| [GAS-1](#GAS-1) | Use calldata instead of memory for function arguments that do not get mutated | 1 |
| [GAS-2](#GAS-2) | For Operations that will not overflow, you could use unchecked | 1 |
| [GAS-3](#GAS-3) | State variables only set in the constructor should be declared `immutable` | 1 |
| [NC-1](#NC-1) | Use `string.concat()` or `bytes.concat()` instead of `abi.encodePacked` | 1 |
| [NC-2](#NC-2) | `constant`s should be defined rather than using magic numbers | 1 |
| [NC-3](#NC-3) | Default Visibility for constants | 1 |
| [NC-4](#NC-4) | Change uint to uint256 | 2 |
| [NC-5](#NC-5) | NatSpec is completely non-existent on functions that should have them | 3 |
| [NC-6](#NC-6) | `require()` / `revert()` statements should have descriptive reason strings | 3 |
| [NC-7](#NC-7) | Use Underscores for Number Literals (add an underscore every 3 digits) | 1 |
| [NC-8](#NC-8) | Internal and private variables and functions names should begin with an underscore | 2 |
| [NC-9](#NC-9) | `public` functions not called by the contract should be declared `external` instead | 3 |
| [NC-10](#NC-10) | Variables need not be initialized to zero | 2 |



### <a name="M-1"></a>[M-1] `call()` should be used instead of `transfer()` on an `address payable`
The use of the deprecated `transfer()` function for an address may make the transaction fail due to the 2300 gas stipend

*Instances (1)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

18:             payable(msg.sender).transfer(prize);

```

### <a name="L-1"></a>[L-1] `abi.encodePacked()` should not be used with dynamic types when passing the result to a hash function such as `keccak256()`
Use `abi.encode()` instead which will pad items to 32 bytes, which will [prevent hash collisions](https://docs.soliditylang.org/en/v0.8.13/abi-spec.html#non-standard-packed-mode) (e.g. `abi.encodePacked(0x123,0x456)` => `0x123456` => `abi.encodePacked(0x1,0x23456)`, but `abi.encode(0x123,0x456)` => `0x0...1230...456`). "Unless there is a compelling reason, `abi.encode` should be preferred". If there is only one argument to `abi.encodePacked()` it can often be cast to `bytes()` or `bytes32()` [instead](https://ethereum.stackexchange.com/questions/30912/how-to-compare-strings-in-solidity#answer-82739).
If all arguments are strings and or bytes, `bytes.concat()` should be used instead

*Instances (1)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

15:         bytes memory pack = abi.encodePacked(g, msg.sender);

```

### <a name="L-2"></a>[L-2] Signature use at deadlines should be allowed
According to [EIP-2612](https://github.com/ethereum/EIPs/blob/71dc97318013bf2ac572ab63fab530ac9ef419ca/EIPS/eip-2612.md?plain=1#L58), signatures used on exactly the deadline timestamp are supposed to be allowed. While the signature may or may not be used for the exact EIP-2612 use case (transfer approvals), for consistency's sake, all deadlines should follow this semantic. If the timestamp is an expiration rather than a deadline, consider whether it makes more sense to include the expiration timestamp as a valid timestamp, as is done for deadlines.

*Instances (1)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

29:         require(commitTime > block.timestamp + 7200);

```

### <a name="L-3"></a>[L-3] Solidity version 0.8.20+ may not work on other chains due to `PUSH0`
The compiler for Solidity 0.8.20 switches the default target EVM version to [Shanghai](https://blog.soliditylang.org/2023/05/10/solidity-0.8.20-release-announcement/#important-note), which includes the new `PUSH0` op code. This op code may not yet be implemented on all L2s, so deployment on these chains will fail. To work around this issue, use an earlier [EVM](https://docs.soliditylang.org/en/v0.8.20/using-the-compiler.html?ref=zaryabs.com#setting-the-evm-version-to-target) [version](https://book.getfoundry.sh/reference/config/solidity-compiler#evm_version). While the project itself may or may not compile with 0.8.20, other projects with which it integrates, or which extend this project may, and those projects will have problems deploying these contracts/libraries.

*Instances (1)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

2: pragma solidity 0.8.17;

```

### <a name="L-4"></a>[L-4] Unsafe ERC20 operation(s)

*Instances (1)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

18:             payable(msg.sender).transfer(prize);

```

### <a name="GAS-1"></a>[GAS-1] Use calldata instead of memory for function arguments that do not get mutated
When a function with a `memory` array is called externally, the `abi.decode()` step has to use a for-loop to copy each index of the `calldata` to the `memory` index. Each iteration of this for-loop costs at least 60 gas (i.e. `60 * <mem_array>.length`). Using `calldata` directly bypasses this loop. 

If the array is passed to an `internal` function which passes the array to another internal function where the array is modified and therefore `memory` is used in the `external` call, it's still more gas-efficient to use `calldata` when the `external` function uses modifiers, since the modifiers may prevent the internal functions from being called. Structs have the same overhead as an array of length one. 

 *Saves 60 gas per instance*

*Instances (1)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

14:     function guess(bytes memory g) public {

```

### <a name="GAS-2"></a>[GAS-2] For Operations that will not overflow, you could use unchecked

*Instances (1)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

29:         require(commitTime > block.timestamp + 7200);

```

### <a name="GAS-3"></a>[GAS-3] State variables only set in the constructor should be declared `immutable`
Variables only set in the constructor and never edited afterwards should be marked as immutable, as it would avoid the expensive storage-writing operation in the constructor (around **20 000 gas** per variable) and replace the expensive storage-reading operations (around **2100 gas** per reading) to a less expensive value reading (**3 gas**)

*Instances (1)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

11:         prize = msg.value;

```

### <a name="NC-1"></a>[NC-1] Use `string.concat()` or `bytes.concat()` instead of `abi.encodePacked`
Solidity version 0.8.4 introduces `bytes.concat()` (vs `abi.encodePacked(<bytes>,<bytes>)`)

Solidity version 0.8.12 introduces `string.concat()` (vs `abi.encodePacked(<str>,<str>), which catches concatenation errors (in the event of a `bytes` data mixed in the concatenation)`)

*Instances (1)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

15:         bytes memory pack = abi.encodePacked(g, msg.sender);

```

### <a name="NC-2"></a>[NC-2] `constant`s should be defined rather than using magic numbers
Even [assembly](https://github.com/code-423n4/2022-05-opensea-seaport/blob/9d7ce4d08bf3c3010304a0476a785c70c0e90ae7/contracts/lib/TokenTransferrer.sol#L35-L39) can benefit from using readable constants instead of hex/numeric literals

*Instances (1)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

29:         require(commitTime > block.timestamp + 7200);

```

### <a name="NC-3"></a>[NC-3] Default Visibility for constants
Some constants are using the default visibility. For readability, consider explicitly declaring them as `internal`.

*Instances (1)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

5:     bytes32 constant TO_GUESS = 0x3350d745acd40b6a232b0266fe40c74a81ac78c31f48c00f5714ba6769cbc374;

```

### <a name="NC-4"></a>[NC-4] Change uint to uint256
Throughout the code base, some variables are declared as `uint`. To favor explicitness, consider changing all instances of `uint` to `uint256`

*Instances (2)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

7:     uint private prize;

8:     uint commitTime = 0;

```

### <a name="NC-5"></a>[NC-5] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (3)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

14:     function guess(bytes memory g) public {

22:     function commit(bytes32 locked_g) public {

28:     function release() public {

```

### <a name="NC-6"></a>[NC-6] `require()` / `revert()` statements should have descriptive reason strings

*Instances (3)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

16:         require(keccak256(pack) == locked);

23:         require(locked == locked_g);

29:         require(commitTime > block.timestamp + 7200);

```

### <a name="NC-7"></a>[NC-7] Use Underscores for Number Literals (add an underscore every 3 digits)

*Instances (1)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

29:         require(commitTime > block.timestamp + 7200);

```

### <a name="NC-8"></a>[NC-8] Internal and private variables and functions names should begin with an underscore
According to the Solidity Style Guide, Non-`external` variable and function names should begin with an [underscore](https://docs.soliditylang.org/en/latest/style-guide.html#underscore-prefix-for-non-external-functions-and-variables)

*Instances (2)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

7:     uint private prize;

8:     uint commitTime = 0;

```

### <a name="NC-9"></a>[NC-9] `public` functions not called by the contract should be declared `external` instead

*Instances (3)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

14:     function guess(bytes memory g) public {

22:     function commit(bytes32 locked_g) public {

28:     function release() public {

```

### <a name="NC-10"></a>[NC-10] Variables need not be initialized to zero
The default value for variables is zero, so initializing them to zero is superfluous.

*Instances (2)*:
```solidity
File: TransactionOrderDependencyHashFixed.sol

6:     bytes32 public locked = 0x00;

8:     uint commitTime = 0;

```

