// Skipping function Get(none), it contains poisonous unsupported syntaxes

func @_backendapi.Controllers.NeedsController.GetNeed$string$(none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :65 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :66 :49)
cbde.store %_id, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :66 :49)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :68 :23) // Not a variable of known type: _needsService
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :68 :45) // Not a variable of known type: id
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :68 :23) // _needsService.GetNeed(id) (InvocationExpression)
%5 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :69 :16) // Not a variable of known type: need
%6 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :69 :24) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :69 :16) // comparison of unknown type: need == null
cond_br %7, ^1, ^2 loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :69 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%8 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :71 :23) // NotFound() (InvocationExpression)
return %8 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :71 :16)

^2: // BinaryBranchBlock
%9 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :73 :27) // Not a variable of known type: _userService
%10 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :73 :48) // Not a variable of known type: need
%11 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :73 :48) // need.UserId (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :73 :48) // need.UserId.ToString() (InvocationExpression)
%13 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :73 :27) // _userService.GetUser(need.UserId.ToString()) (InvocationExpression)
%15 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :76 :16) // Not a variable of known type: UserNeed
%16 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :76 :28) // null (NullLiteralExpression)
%17 = cbde.unknown : i1  loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :76 :16) // comparison of unknown type: UserNeed == null
cond_br %17, ^3, ^4 loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :76 :16)

^3: // JumpBlock
// Entity from another assembly: NotFound
%18 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :78 :23) // NotFound() (InvocationExpression)
return %18 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :78 :16)

^4: // JumpBlock
%19 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :81 :34) // new EditNeedDTO              {                  Title = need.Title,                  Description = need.Description,                  Date = need.Date,                  State = need.State,                  City = UserNeed.Address              } (ObjectCreationExpression)
%20 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :83 :24) // Not a variable of known type: need
%21 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :83 :24) // need.Title (SimpleMemberAccessExpression)
%22 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :84 :30) // Not a variable of known type: need
%23 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :84 :30) // need.Description (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :85 :23) // Not a variable of known type: need
%25 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :85 :23) // need.Date (SimpleMemberAccessExpression)
%26 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :86 :24) // Not a variable of known type: need
%27 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :86 :24) // need.State (SimpleMemberAccessExpression)
%28 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :87 :23) // Not a variable of known type: UserNeed
%29 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :87 :23) // UserNeed.Address (SimpleMemberAccessExpression)
%31 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :90 :19) // Not a variable of known type: needDTO
return %31 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :90 :12)

^5: // ExitBlock
cbde.unreachable

}
func @_backendapi.Controllers.NeedsController.GetNeeds$string$(none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :93 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :94 :49)
cbde.store %_id, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :94 :49)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :97 :19) // Not a variable of known type: _needsService
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :97 :48) // Not a variable of known type: id
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :97 :19) // _needsService.GetNeedsByUser(id) (InvocationExpression)
return %3 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :97 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_backendapi.Controllers.NeedsController.GetDoneNeeds$string$(none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :100 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :101 :53)
cbde.store %_id, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :101 :53)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :104 :19) // Not a variable of known type: _needsService
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :104 :52) // Not a variable of known type: id
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :104 :19) // _needsService.GetDoneNeedsByUser(id) (InvocationExpression)
return %3 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :104 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_backendapi.Controllers.NeedsController.UpdateNeed$string.backendapi.Models.Need$(none, none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :107 :8) {
^entry (%_id : none, %_need : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :108 :45)
cbde.store %_id, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :108 :45)
%1 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :108 :56)
cbde.store %_need, %1 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :108 :56)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :111 :28) // Not a variable of known type: _needsService
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :111 :50) // Not a variable of known type: id
%4 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :111 :28) // _needsService.GetNeed(id) (InvocationExpression)
%6 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :112 :16) // Not a variable of known type: NeedCheck
%7 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :112 :29) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :112 :16) // comparison of unknown type: NeedCheck == null
cond_br %8, ^1, ^2 loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :112 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%9 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :114 :23) // NotFound() (InvocationExpression)
return %9 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :114 :16)

^2: // JumpBlock
%10 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :116 :12) // Not a variable of known type: need
%11 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :116 :12) // need.Id (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :116 :22) // Not a variable of known type: id
%13 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :117 :12) // Not a variable of known type: need
%14 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :117 :12) // need.UserId (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :117 :26) // Not a variable of known type: NeedCheck
%16 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :117 :26) // NeedCheck.UserId (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :118 :12) // Not a variable of known type: need
%18 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :118 :12) // need.Date (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :118 :24) // Not a variable of known type: NeedCheck
%20 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :118 :24) // NeedCheck.Date (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :119 :12) // Not a variable of known type: need
%22 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :119 :12) // need.State (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :119 :25) // Not a variable of known type: NeedCheck
%24 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :119 :25) // NeedCheck.State (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :120 :12) // Not a variable of known type: _needsService
%26 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :120 :37) // Not a variable of known type: id
%27 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :120 :41) // Not a variable of known type: need
%28 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :120 :12) // _needsService.UpdateNeed(id, need) (InvocationExpression)
// Entity from another assembly: NoContent
%29 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :121 :19) // NoContent() (InvocationExpression)
return %29 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :121 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_backendapi.Controllers.NeedsController.Create$string.backendapi.DTO.NeedCreateDTO$(none, none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :126 :8) {
^entry (%_id : none, %_NeedDTO : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :127 :41)
cbde.store %_id, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :127 :41)
%1 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :127 :52)
cbde.store %_NeedDTO, %1 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :127 :52)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :130 :31) // new Need              {                  Title = NeedDTO.Title,                  Description = NeedDTO.Description,                  UserId = ObjectId.Parse(id),                  Date = DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss"),                  State = Utils.Utils.NEED_STATE_UNASSIGNED              } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :132 :24) // Not a variable of known type: NeedDTO
%4 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :132 :24) // NeedDTO.Title (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :133 :30) // Not a variable of known type: NeedDTO
%6 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :133 :30) // NeedDTO.Description (SimpleMemberAccessExpression)
// Entity from another assembly: ObjectId
%7 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :134 :40) // Not a variable of known type: id
%8 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :134 :25) // ObjectId.Parse(id) (InvocationExpression)
// Entity from another assembly: DateTime
%9 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :135 :23) // DateTime.Now (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :135 :45) // "dd/MM/yyyy hh:mm:ss" (StringLiteralExpression)
%11 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :135 :23) // DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss") (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Utils
%12 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :136 :24) // Utils.Utils (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :136 :24) // Utils.Utils.NEED_STATE_UNASSIGNED (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :139 :12) // Not a variable of known type: _needsService
%16 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :139 :37) // Not a variable of known type: NeedCreated
%17 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :139 :12) // _needsService.CreateNeed(NeedCreated) (InvocationExpression)
// Entity from another assembly: CreatedAtRoute
%18 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :140 :34) // "GetNeed" (StringLiteralExpression)
%19 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :140 :56) // Not a variable of known type: NeedCreated
%20 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :140 :56) // NeedCreated.Id (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :140 :56) // NeedCreated.Id.ToString() (InvocationExpression)
%22 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :140 :45) // new { id = NeedCreated.Id.ToString() } (AnonymousObjectCreationExpression)
%23 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :140 :85) // Not a variable of known type: NeedCreated
%24 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :140 :19) // CreatedAtRoute("GetNeed", new { id = NeedCreated.Id.ToString() }, NeedCreated) (InvocationExpression)
return %24 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :140 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_backendapi.Controllers.NeedsController.DeleteNeed$string$(none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :143 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :144 :45)
cbde.store %_id, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :144 :45)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :147 :28) // Not a variable of known type: _needsService
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :147 :50) // Not a variable of known type: id
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :147 :28) // _needsService.GetNeed(id) (InvocationExpression)
%5 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :148 :16) // Not a variable of known type: NeedCheck
%6 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :148 :29) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :148 :16) // comparison of unknown type: NeedCheck == null
cond_br %7, ^1, ^2 loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :148 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%8 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :150 :23) // NotFound() (InvocationExpression)
return %8 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :150 :16)

^2: // JumpBlock
%9 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :153 :12) // Not a variable of known type: _needsService
%10 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :153 :37) // Not a variable of known type: id
%11 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :153 :12) // _needsService.DeleteNeed(id) (InvocationExpression)
// Entity from another assembly: NoContent
%12 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :154 :19) // NoContent() (InvocationExpression)
return %12 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\NeedsController.cs" :154 :12)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function GetAssignedNeeds(none), it contains poisonous unsupported syntaxes

// Skipping function GetDoneVolunteerNeeds(none), it contains poisonous unsupported syntaxes

