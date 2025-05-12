**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [no-reason-string](#no-reason-string) (2 results) (Low)
 - [unchecked-lowlevel-hidden](#unchecked-lowlevel-hidden) (1 results) (Low)
## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-0
[CallToUnknownFixed.decryptMessage(string)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/4_ImproperInputValidation/1B_CallToUnknown/CallToUnknownFixed/CallToUnknownFixed.sol#L27-L37) require/ revert has not reason string:- 
	- [require(bool)(encryptionProvider != address(0))](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/4_ImproperInputValidation/1B_CallToUnknown/CallToUnknownFixed/CallToUnknownFixed.sol#L31)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/4_ImproperInputValidation/1B_CallToUnknown/CallToUnknownFixed/CallToUnknownFixed.sol#L27-L37


 - [ ] ID-1
[CallToUnknownFixed.encryptMessage(string)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/4_ImproperInputValidation/1B_CallToUnknown/CallToUnknownFixed/CallToUnknownFixed.sol#L14-L25) require/ revert has not reason string:- 
	- [require(bool)(encryptionProvider != address(0))](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/4_ImproperInputValidation/1B_CallToUnknown/CallToUnknownFixed/CallToUnknownFixed.sol#L18)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/4_ImproperInputValidation/1B_CallToUnknown/CallToUnknownFixed/CallToUnknownFixed.sol#L14-L25


## unchecked-lowlevel-hidden
Impact: Low
Confidence: High
 - [ ] ID-2
[CallToUnknownFixed.encryptMessage(string)](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/4_ImproperInputValidation/1B_CallToUnknown/CallToUnknownFixed/CallToUnknownFixed.sol#L14-L25) return value is not checked:- 
	- [(success,encryptedText) = encryptionProvider.call(abi.encodeWithSignature(encrypt(string),message))](../../contracts/beta-contracts/1.sdb-subfolders-critical-all/4_ImproperInputValidation/1B_CallToUnknown/CallToUnknownFixed/CallToUnknownFixed.sol#L19-L21)

../../contracts/beta-contracts/1.sdb-subfolders-critical-all/4_ImproperInputValidation/1B_CallToUnknown/CallToUnknownFixed/CallToUnknownFixed.sol#L14-L25


