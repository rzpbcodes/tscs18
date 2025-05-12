## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_ExceptionFixed/Mishandled_Out_Of_Gas_ExceptionFixed.sol
### External Call To User-Supplied Address
- SWC ID: 107 in Contract `MishandledOutOfGasExceptionFixed`
- Function name: `borrow(uint256)`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_ExceptionFixed/Mishandled_Out_Of_Gas_ExceptionFixed.sol:11
```
payable(msg.sender).call{
            value: amount,
            gas: gasleft()
        }("")
```
### Unprotected Ether Withdrawal
- SWC ID: 105 in Contract `MishandledOutOfGasExceptionFixed`
- Function name: `borrow(uint256)`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_ExceptionFixed/Mishandled_Out_Of_Gas_ExceptionFixed.sol:11
```
payable(msg.sender).call{
            value: amount,
            gas: gasleft()
        }("")
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_ExceptionFixed/Mishandled_Out_Of_Gas_ExceptionFixed.sol

## External Call To User-Supplied Address
- SWC ID: 107
- Severity: Low
- Contract: MishandledOutOfGasExceptionFixed
- Function name: `borrow(uint256)`
- PC address: 519
- Estimated Gas Usage: 7812 - 62566

#### Description

A call to a user-supplied address is executed.
An external message call to an address specified by the caller is executed. Note that the callee account might contain arbitrary code and could re-enter any function within this contract. Reentering the contract in an intermediate state may lead to unexpected behaviour. Make sure that no state modifications are executed after this call and/or reentrancy guards are in place.
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_ExceptionFixed/Mishandled_Out_Of_Gas_ExceptionFixed.sol:11

#### Code

```
payable(msg.sender).call{
            value: amount,
            gas: gasleft()
        }("")
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x0, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [ATTACKER], function: borrow(uint256), txdata: 0xc5ebeaec000000000000000000000000000000000000000000000000021f494c589c0000, decoded_data: (152921504606846976,), value: 0x0


## Unprotected Ether Withdrawal
- SWC ID: 105
- Severity: High
- Contract: MishandledOutOfGasExceptionFixed
- Function name: `borrow(uint256)`
- PC address: 519
- Estimated Gas Usage: 7812 - 62566

#### Description

Any sender can withdraw Ether from the contract account.
Arbitrary senders other than the contract creator can profitably extract Ether from the contract account. Verify the business logic carefully and make sure that appropriate security controls are in place to prevent unexpected loss of funds.
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_ExceptionFixed/Mishandled_Out_Of_Gas_ExceptionFixed.sol:11

#### Code

```
payable(msg.sender).call{
            value: amount,
            gas: gasleft()
        }("")
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x11002980c1e8248a, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [SOMEGUY], function: borrow(uint256), txdata: 0xc5ebeaec000000000000000000000000000000000000000000000000018442269c01b046, decoded_data: (109285024557281350,), value: 0x0
Caller: [ATTACKER], function: borrow(uint256), txdata: 0xc5ebeaec000000000000000000000000000000000000000000000000434b8d9d141980c9, decoded_data: (4849125129581068489,), value: 0x0


