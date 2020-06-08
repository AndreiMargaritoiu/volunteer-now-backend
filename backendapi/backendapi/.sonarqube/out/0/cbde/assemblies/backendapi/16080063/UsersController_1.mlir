func @_backendapi.Controllers.UsersController.Create$backendapi.Models.User$(none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :31 :8) {
^entry (%_user : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :33 :43)
cbde.store %_user, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :33 :43)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :35 :28) // Not a variable of known type: _userService
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :35 :56) // Not a variable of known type: user
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :35 :56) // user.Email (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :35 :28) // _userService.GetUserByEmail(user.Email) (InvocationExpression)
%6 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :37 :16) // Not a variable of known type: userCheck
%7 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :37 :29) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :37 :16) // comparison of unknown type: userCheck != null
cond_br %8, ^1, ^2 loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :37 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%9 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :39 :23) // NotFound() (InvocationExpression)
return %9 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :39 :16)

^2: // JumpBlock
%10 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :41 :12) // Not a variable of known type: _userService
%11 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :41 :32) // Not a variable of known type: user
%12 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :41 :12) // _userService.Create(user) (InvocationExpression)
// Entity from another assembly: CreatedAtRoute
%13 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :42 :27) // "GetUser" (StringLiteralExpression)
%14 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :42 :49) // Not a variable of known type: user
%15 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :42 :49) // user.Id (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :42 :49) // user.Id.ToString() (InvocationExpression)
%17 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :42 :38) // new { id = user.Id.ToString() } (AnonymousObjectCreationExpression)
%18 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :42 :71) // Not a variable of known type: user
%19 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :42 :12) // CreatedAtRoute("GetUser", new { id = user.Id.ToString() }, user) (InvocationExpression)
%20 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :44 :40) // new LoginUserDTO              {                  Id = user.Id,                  Type = user.Type,                } (ObjectCreationExpression)
%21 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :46 :21) // Not a variable of known type: user
%22 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :46 :21) // user.Id (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :47 :23) // Not a variable of known type: user
%24 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :47 :23) // user.Type (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UserService
%26 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :51 :47) // Not a variable of known type: loginUserDTO
%27 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :51 :19) // UserService.SerialGenerator(loginUserDTO) (InvocationExpression)
return %27 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :51 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_backendapi.Controllers.UsersController.GetUser$string$(none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :55 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :56 :49)
cbde.store %_id, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :56 :49)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :58 :23) // Not a variable of known type: _userService
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :58 :44) // Not a variable of known type: id
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :58 :23) // _userService.GetUser(id) (InvocationExpression)
%6 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :61 :16) // Not a variable of known type: user
%7 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :61 :24) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :61 :16) // comparison of unknown type: user == null
cond_br %8, ^1, ^2 loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :61 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%9 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :63 :23) // NotFound() (InvocationExpression)
return %9 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :63 :16)

^2: // SimpleBlock
%10 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :67 :26) // new EditUserDTO                  {                      Lastname = user.Lastname,                      Firstname = user.Firstname,                      Email = user.Email,                      Telephone = user.Telephone,                      Address = user.Address,                    } (ObjectCreationExpression)
%11 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :69 :31) // Not a variable of known type: user
%12 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :69 :31) // user.Lastname (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :70 :32) // Not a variable of known type: user
%14 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :70 :32) // user.Firstname (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :71 :28) // Not a variable of known type: user
%16 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :71 :28) // user.Email (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :72 :32) // Not a variable of known type: user
%18 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :72 :32) // user.Telephone (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :73 :30) // Not a variable of known type: user
%20 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :73 :30) // user.Address (SimpleMemberAccessExpression)
br ^3

^3: // JumpBlock
%21 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :78 :19) // Not a variable of known type: UserDTO
return %21 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :78 :12)

^4: // ExitBlock
cbde.unreachable

}
func @_backendapi.Controllers.UsersController.Get$string$(none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :81 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :82 :61)
cbde.store %_id, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :82 :61)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :84 :27) // Not a variable of known type: _userService
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :84 :56) // Not a variable of known type: id
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :84 :27) // _userService.GetUserNeedsIds(id) (InvocationExpression)
%5 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :86 :16) // Not a variable of known type: ListsIds
%6 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :86 :28) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :86 :16) // comparison of unknown type: ListsIds == null
cond_br %7, ^1, ^2 loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :86 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%8 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :88 :23) // NotFound() (InvocationExpression)
return %8 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :88 :16)

^2: // JumpBlock
%9 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :92 :19) // Not a variable of known type: ListsIds
return %9 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :92 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_backendapi.Controllers.UsersController.UpdateUser$string.backendapi.Models.User$(none, none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :95 :8) {
^entry (%_id : none, %_user : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :96 :45)
cbde.store %_id, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :96 :45)
%1 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :96 :56)
cbde.store %_user, %1 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :96 :56)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :98 :28) // Not a variable of known type: _userService
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :98 :49) // Not a variable of known type: id
%4 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :98 :28) // _userService.GetUser(id) (InvocationExpression)
%6 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :100 :16) // Not a variable of known type: UserCheck
%7 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :100 :29) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :100 :16) // comparison of unknown type: UserCheck == null
cond_br %8, ^1, ^2 loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :100 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%9 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :102 :23) // NotFound() (InvocationExpression)
return %9 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :102 :16)

^2: // JumpBlock
%10 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :105 :12) // Not a variable of known type: user
%11 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :105 :12) // user.Id (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :105 :22) // Not a variable of known type: id
%13 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :106 :12) // Not a variable of known type: user
%14 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :106 :12) // user.Password (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :106 :28) // Not a variable of known type: UserCheck
%16 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :106 :28) // UserCheck.Password (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :107 :12) // Not a variable of known type: user
%18 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :107 :12) // user.Type (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :107 :24) // Not a variable of known type: UserCheck
%20 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :107 :24) // UserCheck.Type (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :108 :12) // Not a variable of known type: user
%22 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :108 :12) // user.NeedsIds (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :108 :28) // Not a variable of known type: UserCheck
%24 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :108 :28) // UserCheck.NeedsIds (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :111 :12) // Not a variable of known type: _userService
%26 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :111 :36) // Not a variable of known type: id
%27 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :111 :40) // Not a variable of known type: user
%28 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :111 :12) // _userService.UpdateUser(id, user) (InvocationExpression)
// Entity from another assembly: NoContent
%29 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :112 :19) // NoContent() (InvocationExpression)
return %29 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :112 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function AssignUserNeed(none, none), it contains poisonous unsupported syntaxes

func @_backendapi.Controllers.UsersController.UnassignUserNeed$string.string$(none, none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :146 :8) {
^entry (%_uid : none, %_nid : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :147 :51)
cbde.store %_uid, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :147 :51)
%1 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :147 :63)
cbde.store %_nid, %1 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :147 :63)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :149 :28) // Not a variable of known type: _userService
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :149 :49) // Not a variable of known type: uid
%4 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :149 :28) // _userService.GetUser(uid) (InvocationExpression)
%6 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :150 :16) // Not a variable of known type: UserCheck
%7 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :150 :29) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :150 :16) // comparison of unknown type: UserCheck == null
cond_br %8, ^1, ^2 loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :150 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%9 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :152 :23) // NotFound() (InvocationExpression)
return %9 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :152 :16)

^2: // BinaryBranchBlock
%10 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :154 :41) // Not a variable of known type: nid
%11 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :154 :28) // new ObjectId(nid) (ObjectCreationExpression)
%13 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :156 :26) // Not a variable of known type: _needService
%14 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :156 :47) // Not a variable of known type: nid
%15 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :156 :26) // _needService.GetNeed(nid) (InvocationExpression)
%17 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :157 :12) // Not a variable of known type: NeedGet
%18 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :157 :12) // NeedGet.State (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Utils
%19 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :157 :28) // Utils.Utils (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :157 :28) // Utils.Utils.NEED_STATE_UNASSIGNED (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :158 :16) // Not a variable of known type: NeedGet
%22 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :158 :27) // null (NullLiteralExpression)
%23 = cbde.unknown : i1  loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :158 :16) // comparison of unknown type: NeedGet == null
cond_br %23, ^3, ^4 loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :158 :16)

^3: // JumpBlock
// Entity from another assembly: NotFound
%24 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :160 :23) // NotFound() (InvocationExpression)
return %24 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :160 :16)

^4: // JumpBlock
%25 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :163 :12) // Not a variable of known type: UserCheck
%26 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :163 :12) // UserCheck.NeedsIds (SimpleMemberAccessExpression)
%27 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :163 :38) // Not a variable of known type: nidy
%28 = cbde.unknown : i1 loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :163 :12) // UserCheck.NeedsIds.Remove(nidy) (InvocationExpression)
%29 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :164 :12) // Not a variable of known type: _needService
%30 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :164 :36) // Not a variable of known type: nid
%31 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :164 :41) // Not a variable of known type: NeedGet
%32 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :164 :12) // _needService.UpdateNeed(nid, NeedGet) (InvocationExpression)
%33 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :165 :12) // Not a variable of known type: _userService
%34 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :165 :40) // Not a variable of known type: uid
%35 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :165 :45) // Not a variable of known type: nidy
%36 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :165 :51) // Not a variable of known type: UserCheck
%37 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :165 :12) // _userService.AssignUserNeed(uid, nidy, UserCheck) (InvocationExpression)
// Entity from another assembly: NoContent
%38 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :166 :19) // NoContent() (InvocationExpression)
return %38 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :166 :12)

^5: // ExitBlock
cbde.unreachable

}
func @_backendapi.Controllers.UsersController.DoneUserNeed$string.string$(none, none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :169 :8) {
^entry (%_uid : none, %_nid : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :170 :47)
cbde.store %_uid, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :170 :47)
%1 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :170 :59)
cbde.store %_nid, %1 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :170 :59)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :173 :26) // Not a variable of known type: _needService
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :173 :47) // Not a variable of known type: nid
%4 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :173 :26) // _needService.GetNeed(nid) (InvocationExpression)
%6 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :174 :12) // Not a variable of known type: NeedGet
%7 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :174 :12) // NeedGet.State (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Utils
%8 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :174 :28) // Utils.Utils (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :174 :28) // Utils.Utils.NEED_STATE_DONE (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :175 :16) // Not a variable of known type: NeedGet
%11 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :175 :27) // null (NullLiteralExpression)
%12 = cbde.unknown : i1  loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :175 :16) // comparison of unknown type: NeedGet == null
cond_br %12, ^1, ^2 loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :175 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%13 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :177 :23) // NotFound() (InvocationExpression)
return %13 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :177 :16)

^2: // JumpBlock
%14 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :180 :12) // Not a variable of known type: _needService
%15 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :180 :36) // Not a variable of known type: nid
%16 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :180 :41) // Not a variable of known type: NeedGet
%17 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :180 :12) // _needService.UpdateNeed(nid, NeedGet) (InvocationExpression)
// Entity from another assembly: NoContent
%18 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :181 :19) // NoContent() (InvocationExpression)
return %18 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :181 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_backendapi.Controllers.UsersController.Login$backendapi.Models.User$(none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :184 :8) {
^entry (%_user : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :187 :42)
cbde.store %_user, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :187 :42)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :190 :25) // Not a variable of known type: _userService
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :190 :44) // Not a variable of known type: user
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :190 :44) // user.Email (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :190 :56) // Not a variable of known type: user
%5 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :190 :56) // user.Password (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :190 :25) // _userService.Login(user.Email, user.Password) (InvocationExpression)
%8 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :192 :16) // Not a variable of known type: status
%9 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :192 :26) // null (NullLiteralExpression)
%10 = cbde.unknown : i1  loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :192 :16) // comparison of unknown type: status == null
cond_br %10, ^1, ^2 loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :192 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%11 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :195 :23) // NotFound() (InvocationExpression)
return %11 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :195 :16)

^2: // JumpBlock
%12 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :200 :44) // new LoginUserDTO                  {                      Id = status.Id,                      Type = status.Type,                    } (ObjectCreationExpression)
%13 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :202 :25) // Not a variable of known type: status
%14 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :202 :25) // status.Id (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :203 :27) // Not a variable of known type: status
%16 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :203 :27) // status.Type (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UserService
%18 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :207 :51) // Not a variable of known type: loginUserDTO
%19 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :207 :23) // UserService.SerialGenerator(loginUserDTO) (InvocationExpression)
return %19 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\UsersController.cs" :207 :16)

^3: // ExitBlock
cbde.unreachable

}
