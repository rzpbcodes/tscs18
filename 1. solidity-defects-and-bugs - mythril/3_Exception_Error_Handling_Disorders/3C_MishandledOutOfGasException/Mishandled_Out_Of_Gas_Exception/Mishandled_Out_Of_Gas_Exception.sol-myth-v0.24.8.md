## Summary results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_Exception/Mishandled_Out_Of_Gas_Exception.sol
### Unprotected Ether Withdrawal
- SWC ID: 105 in Contract `MishandledOutOfGasException`
- Function name: `borrow(uint256)`
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_Exception/Mishandled_Out_Of_Gas_Exception.sol:11
```
payable(msg.sender).transfer(amount)
```
# Analysis results for /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_Exception/Mishandled_Out_Of_Gas_Exception.sol

## Unprotected Ether Withdrawal
- SWC ID: 105
- Severity: High
- Contract: MishandledOutOfGasException
- Function name: `borrow(uint256)`
- PC address: 514
- Estimated Gas Usage: 7526 - 61997

#### Description

Any sender can withdraw Ether from the contract account.
Arbitrary senders other than the contract creator can profitably extract Ether from the contract account. Verify the business logic carefully and make sure that appropriate security controls are in place to prevent unexpected loss of funds.
In file: /home/visual/contracts/beta-contracts/sdb-subfolders-mythril/Issues/3_Exception_Error_Handling_Disorders/3C_MishandledOutOfGasException/Mishandled_Out_Of_Gas_Exception/Mishandled_Out_Of_Gas_Exception.sol:11

#### Code

```
payable(msg.sender).transfer(amount)
```

#### Initial State:

Account: [CREATOR], balance: 0x0, nonce:0, storage:{}
Account: [ATTACKER], balance: 0x4000000400000, nonce:0, storage:{}

#### Transaction Sequence

Caller: [CREATOR], calldata: , decoded_data: , value: 0x0
Caller: [SOMEGUY], function: borrow(uint256), txdata: 0xc5ebeaec0000000000000000000000000000000000000000000000000000000000000000, decoded_data: (0,), value: 0x0
Caller: [ATTACKER], function: borrow(uint256), txdata: 0xc5ebeaec0000000000000000000000000000000000000000000000053211494c58c00100, decoded_data: (95841465737303556352,), value: 0x0


