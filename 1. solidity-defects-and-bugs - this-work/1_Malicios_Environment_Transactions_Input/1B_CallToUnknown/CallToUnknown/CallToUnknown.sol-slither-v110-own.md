**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [call-to-unknown](#call-to-unknown) (1 results) (Low)
 - [no-reason-string](#no-reason-string) (2 results) (Low)
 - [unchecked-lowlevel-hidden](#unchecked-lowlevel-hidden) (2 results) (Low)
## call-to-unknown
Impact: Low
Confidence: High
 - [ ] ID-0
[CallToUnknown.encryptMessage(string,address)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknown/CallToUnknown.sol#L10-L22) initiates .call on parameters at:- 
	- [(success,encryptedText) = encryptionProvider.call(abi.encodeWithSignature(encrypt(string),message))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknown/CallToUnknown.sol#L15-L17)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknown/CallToUnknown.sol#L10-L22


## no-reason-string
Impact: Low
Confidence: Low
 - [ ] ID-1
[CallToUnknown.decryptMessage(string)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknown/CallToUnknown.sol#L24-L34) require/ revert has not reason string:- 
	- [require(bool)(encryptionProviders[msg.sender] != address(0))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknown/CallToUnknown.sol#L28)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknown/CallToUnknown.sol#L24-L34


 - [ ] ID-2
[CallToUnknown.encryptMessage(string,address)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknown/CallToUnknown.sol#L10-L22) require/ revert has not reason string:- 
	- [require(bool)(encryptionProvider != address(0))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknown/CallToUnknown.sol#L14)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknown/CallToUnknown.sol#L10-L22


## unchecked-lowlevel-hidden
Impact: Low
Confidence: High
 - [ ] ID-3
[CallToUnknown.encryptMessage(string,address)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknown/CallToUnknown.sol#L10-L22) return value is not checked:- 
	- [(success,encryptedText) = encryptionProvider.call(abi.encodeWithSignature(encrypt(string),message))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknown/CallToUnknown.sol#L15-L17)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknown/CallToUnknown.sol#L10-L22


 - [ ] ID-4
[CallToUnknown.decryptMessage(string)](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknown/CallToUnknown.sol#L24-L34) return value is not checked:- 
	- [(success,decryptedText) = encryptionProviders[msg.sender].call(abi.encodeWithSignature(decrypt(string),message))](../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknown/CallToUnknown.sol#L29-L31)

../../contracts/beta-contracts/sdb-subfolders-slither-v11-own/Issues/1_Malicios_Environment_Transactions_Input/1B_CallToUnknown/CallToUnknown/CallToUnknown.sol#L24-L34


