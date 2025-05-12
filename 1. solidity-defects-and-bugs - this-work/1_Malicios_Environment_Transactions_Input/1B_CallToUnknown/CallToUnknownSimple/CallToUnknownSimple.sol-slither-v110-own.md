**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [call-to-unknown](#call-to-unknown) (1 results) (Low)
 - [no-reason-string](#no-reason-string) (1 results) (Low)
## call-to-unknown
Impact: Low
Confidence: High
 - [ ] ID-0
[CallToUnknownSimple.foo(string,address)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknownSimple/CallToUnknownSimple.sol#L8-L18) initiates .call on parameters at:- 
	- [(success,processed) = provider.call(abi.encodeWithSignature(process(string),data))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknownSimple/CallToUnknownSimple.sol#L13-L15)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknownSimple/CallToUnknownSimple.sol#L8-L18


## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-1
[CallToUnknownSimple.foo(string,address)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknownSimple/CallToUnknownSimple.sol#L8-L18) require/ revert has not reason string:- 
	- [require(bool)(provider != address(0))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknownSimple/CallToUnknownSimple.sol#L12)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknownSimple/CallToUnknownSimple.sol#L8-L18


