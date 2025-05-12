**THIS CHECKLIST IS NOT COMPLETE**. Use `--show-ignored-findings` to show all the results.
Summary
 - [solc-version](#solc-version) (1 results) (Informational)
 - [constable-states](#constable-states) (1 results) (Optimization)
 - [immutable-states](#immutable-states) (2 results) (Optimization)
## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-0
Version constraint 0.8.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- VerbatimInvalidDeduplication
	- FullInlinerNonExpressionSplitArgumentEvaluationOrder
	- MissingSideEffectsOnSelectorAccess.
It is used by:
	- [0.8.17](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimal/ImproperPrivateVariableSecretMinimal.sol#L2)

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimal/ImproperPrivateVariableSecretMinimal.sol#L2


## constable-states
Impact: Optimization
Confidence: High
 - [ ] ID-1
[ImproperPrivateVariableInitialization._secretNumber](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimal/ImproperPrivateVariableSecretMinimal.sol#L9) should be constant 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimal/ImproperPrivateVariableSecretMinimal.sol#L9


## immutable-states
Impact: Optimization
Confidence: High
 - [ ] ID-2
[ImproperPrivateVariableInitialization.fee](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimal/ImproperPrivateVariableSecretMinimal.sol#L10) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimal/ImproperPrivateVariableSecretMinimal.sol#L10


 - [ ] ID-3
[ImproperPrivateVariableInitialization._owner](../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimal/ImproperPrivateVariableSecretMinimal.sol#L7) should be immutable 

../../contracts/beta-contracts/sdb-subfolders-slither/Issues/2_Blockchain_Environment_Dependency/2D_ImproperPrivateVariableSecret/ImproperPrivateVariableSecretMinimal/ImproperPrivateVariableSecretMinimal.sol#L7


