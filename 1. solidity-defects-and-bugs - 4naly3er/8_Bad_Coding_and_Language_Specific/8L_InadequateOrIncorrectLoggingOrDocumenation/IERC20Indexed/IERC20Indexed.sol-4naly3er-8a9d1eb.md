# Report

| |Issue|Instances|
|-|:-|:-:|
| [GAS-1](#GAS-1) | `a = a + b` is more gas effective than `a += b` for state variables (excluding arrays and mappings) | 4 |
| [GAS-2](#GAS-2) | For Operations that will not overflow, you could use unchecked | 9 |
| [NC-1](#NC-1) | `constant`s should be defined rather than using magic numbers | 1 |
| [NC-2](#NC-2) | Event missing indexed field | 2 |
| [NC-3](#NC-3) | Functions should not be longer than 50 lines | 6 |
| [NC-4](#NC-4) | NatSpec is completely non-existent on functions that should have them | 8 |
| [NC-5](#NC-5) | Consider using named mappings | 2 |
| [NC-6](#NC-6) | Contract does not follow the Solidity style guide's suggested layout ordering | 1 |
| [NC-7](#NC-7) | Event is missing `indexed` fields | 2 |



### <a name="GAS-1"></a>[GAS-1] `a = a + b` is more gas effective than `a += b` for state variables (excluding arrays and mappings)
This saves **16 gas per instance.**

*Instances (4)*:
```solidity
File: IERC20Indexed.sol

45:         balanceOf[recipient] += amount;

67:         balanceOf[recipient] += amount;

73:         balanceOf[msg.sender] += amount;

74:         totalSupply += amount;

```

### <a name="GAS-2"></a>[GAS-2] For Operations that will not overflow, you could use unchecked

*Instances (9)*:
```solidity
File: IERC20Indexed.sol

44:         balanceOf[msg.sender] -= amount;

45:         balanceOf[recipient] += amount;

65:         allowance[sender][msg.sender] -= amount;

66:         balanceOf[sender] -= amount;

67:         balanceOf[recipient] += amount;

73:         balanceOf[msg.sender] += amount;

74:         totalSupply += amount;

79:         balanceOf[msg.sender] -= amount;

80:         totalSupply -= amount;

```

### <a name="NC-1"></a>[NC-1] `constant`s should be defined rather than using magic numbers
Even [assembly](https://github.com/code-423n4/2022-05-opensea-seaport/blob/9d7ce4d08bf3c3010304a0476a785c70c0e90ae7/contracts/lib/TokenTransferrer.sol#L35-L39) can benefit from using readable constants instead of hex/numeric literals

*Instances (1)*:
```solidity
File: IERC20Indexed.sol

37:     uint8 public decimals = 18;

```

### <a name="NC-2"></a>[NC-2] Event missing indexed field
Index event fields make the field more quickly accessible [to off-chain tools](https://ethereum.stackexchange.com/questions/40396/can-somebody-please-explain-the-concept-of-event-indexing) that parse events. This is especially useful when it comes to filtering based on an address. However, note that each index field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Where applicable, each `event` should use three `indexed` fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three applicable fields, all of the applicable fields should be indexed.

*Instances (2)*:
```solidity
File: IERC20Indexed.sol

27:     event Transfer(address from, address to, uint256 value);

28:     event Approval(address owner, address spender, uint256 value);

```

### <a name="NC-3"></a>[NC-3] Functions should not be longer than 50 lines
Overly complex code can make understanding functionality more difficult, try to further modularize your code to ensure readability 

*Instances (6)*:
```solidity
File: IERC20Indexed.sol

6:     function totalSupply() external view returns (uint256);

8:     function balanceOf(address account) external view returns (uint256);

10:     function transfer(address recipient, uint256 amount)

14:     function allowance(address owner, address spender)

19:     function approve(address spender, uint256 amount) external returns (bool);

39:     function transfer(address recipient, uint256 amount)

```

### <a name="NC-4"></a>[NC-4] NatSpec is completely non-existent on functions that should have them
Public and external functions that aren't view or pure should have NatSpec comments

*Instances (8)*:
```solidity
File: IERC20Indexed.sol

10:     function transfer(address recipient, uint256 amount)

19:     function approve(address spender, uint256 amount) external returns (bool);

21:     function transferFrom(

39:     function transfer(address recipient, uint256 amount)

50:     function approve(address spender, uint256 amount)

60:     function transferFrom(

72:     function mint(uint256 amount) external {

78:     function burn(uint256 amount) external {

```

### <a name="NC-5"></a>[NC-5] Consider using named mappings
Consider moving to solidity version 0.8.18 or later, and using [named mappings](https://ethereum.stackexchange.com/questions/51629/how-to-name-the-arguments-in-mapping/145555#145555) to make it easier to understand the purpose of each mapping

*Instances (2)*:
```solidity
File: IERC20Indexed.sol

33:     mapping(address => uint256) public override balanceOf;

34:     mapping(address => mapping(address => uint256)) public override allowance;

```

### <a name="NC-6"></a>[NC-6] Contract does not follow the Solidity style guide's suggested layout ordering
The [style guide](https://docs.soliditylang.org/en/v0.8.16/style-guide.html#order-of-layout) says that, within a contract, the ordering should be:

1) Type declarations
2) State variables
3) Events
4) Modifiers
5) Functions

However, the contract(s) below do not follow this ordering

*Instances (1)*:
```solidity
File: IERC20Indexed.sol

1: 
   Current order:
   FunctionDefinition.totalSupply
   FunctionDefinition.balanceOf
   FunctionDefinition.transfer
   FunctionDefinition.allowance
   FunctionDefinition.approve
   FunctionDefinition.transferFrom
   EventDefinition.Transfer
   EventDefinition.Approval
   VariableDeclaration.totalSupply
   VariableDeclaration.balanceOf
   VariableDeclaration.allowance
   VariableDeclaration.name
   VariableDeclaration.symbol
   VariableDeclaration.decimals
   FunctionDefinition.transfer
   FunctionDefinition.approve
   FunctionDefinition.transferFrom
   FunctionDefinition.mint
   FunctionDefinition.burn
   
   Suggested order:
   VariableDeclaration.totalSupply
   VariableDeclaration.balanceOf
   VariableDeclaration.allowance
   VariableDeclaration.name
   VariableDeclaration.symbol
   VariableDeclaration.decimals
   EventDefinition.Transfer
   EventDefinition.Approval
   FunctionDefinition.totalSupply
   FunctionDefinition.balanceOf
   FunctionDefinition.transfer
   FunctionDefinition.allowance
   FunctionDefinition.approve
   FunctionDefinition.transferFrom
   FunctionDefinition.transfer
   FunctionDefinition.approve
   FunctionDefinition.transferFrom
   FunctionDefinition.mint
   FunctionDefinition.burn

```

### <a name="NC-7"></a>[NC-7] Event is missing `indexed` fields
Index event fields make the field more quickly accessible to off-chain tools that parse events. However, note that each index field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Each event should use three indexed fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three fields, all of the fields should be indexed.

*Instances (2)*:
```solidity
File: IERC20Indexed.sol

27:     event Transfer(address from, address to, uint256 value);

28:     event Approval(address owner, address spender, uint256 value);

```

