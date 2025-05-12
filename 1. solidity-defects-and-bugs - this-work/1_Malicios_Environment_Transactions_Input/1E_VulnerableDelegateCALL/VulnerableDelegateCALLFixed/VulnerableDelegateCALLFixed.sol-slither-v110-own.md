**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [call-to-unknown](#call-to-unknown) (1 results) (Low)
 - [no-reason-string](#no-reason-string) (1 results) (Low)
## call-to-unknown
Impact: Low
Confidence: High
 - [ ] ID-0
[VulnerableDelegeateCALLFixed.forwardToWorker(address,bytes)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1E_VulnerableDelegateCALL/VulnerableDelegateCALLFixed/VulnerableDelegateCALLFixed.sol#L30-L41) initiates .call on parameters at:- 
	- [(success,None) = workerAddress.delegatecall(callData)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1E_VulnerableDelegateCALL/VulnerableDelegateCALLFixed/VulnerableDelegateCALLFixed.sol#L38)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1E_VulnerableDelegateCALL/VulnerableDelegateCALLFixed/VulnerableDelegateCALLFixed.sol#L30-L41


## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-1
[VulnerableDelegeateCALLFixed.forwardToWorker(address,bytes)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1E_VulnerableDelegateCALL/VulnerableDelegateCALLFixed/VulnerableDelegateCALLFixed.sol#L30-L41) require/ revert has not reason string:- 
	- [require(bool)(success)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1E_VulnerableDelegateCALL/VulnerableDelegateCALLFixed/VulnerableDelegateCALLFixed.sol#L39)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1E_VulnerableDelegateCALL/VulnerableDelegateCALLFixed/VulnerableDelegateCALLFixed.sol#L30-L41


