**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (1 results) (Low)
 - [unchecked-lowlevel-hidden](#unchecked-lowlevel-hidden) (1 results) (Low)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[CallToUnknownSimple.constructor(address)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknownSimpleFixed/CallToUnknownSimpleFixed.sol#L9-L12) require/ revert has not reason string:- 
	- [require(bool)(_provider != address(0))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknownSimpleFixed/CallToUnknownSimpleFixed.sol#L10)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknownSimpleFixed/CallToUnknownSimpleFixed.sol#L9-L12


## unchecked-lowlevel-hidden
Impact: Low
Confidence: High
 - [ ] ID-1
[CallToUnknownSimple.foo(string)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknownSimpleFixed/CallToUnknownSimpleFixed.sol#L14-L23) return value is not checked:- 
	- [(success,processed) = provider.call(abi.encodeWithSignature(process(string),data))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknownSimpleFixed/CallToUnknownSimpleFixed.sol#L18-L20)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknownSimpleFixed/CallToUnknownSimpleFixed.sol#L14-L23


