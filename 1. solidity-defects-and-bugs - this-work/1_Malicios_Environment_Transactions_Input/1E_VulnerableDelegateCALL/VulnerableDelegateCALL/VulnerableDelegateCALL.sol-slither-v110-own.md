**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [call-to-unknown](#call-to-unknown) (1 results) (Low)
 - [no-reason-string](#no-reason-string) (1 results) (Low)
## call-to-unknown
Impact: Low
Confidence: High
 - [ ] ID-0
[VulnerableDelegeateCALL.forwardToWorker(address,bytes)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1E_VulnerableDelegateCALL/VulnerableDelegateCALL/VulnerableDelegateCALL.sol#L10-L17) initiates .call on parameters at:- 
	- [(success,None) = workerAddress.delegatecall(callData)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1E_VulnerableDelegateCALL/VulnerableDelegateCALL/VulnerableDelegateCALL.sol#L14)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1E_VulnerableDelegateCALL/VulnerableDelegateCALL/VulnerableDelegateCALL.sol#L10-L17


## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-1
[VulnerableDelegeateCALL.forwardToWorker(address,bytes)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1E_VulnerableDelegateCALL/VulnerableDelegateCALL/VulnerableDelegateCALL.sol#L10-L17) require/ revert has not reason string:- 
	- [require(bool)(success)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1E_VulnerableDelegateCALL/VulnerableDelegateCALL/VulnerableDelegateCALL.sol#L15)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1E_VulnerableDelegateCALL/VulnerableDelegateCALL/VulnerableDelegateCALL.sol#L10-L17


