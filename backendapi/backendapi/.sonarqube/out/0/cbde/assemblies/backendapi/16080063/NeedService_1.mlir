func @_backendapi.Services.NeedService.CreateNeed$backendapi.Models.Need$(none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\NeedService.cs" :28 :8) {
^entry (%_need : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\NeedService.cs" :28 :31)
cbde.store %_need, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\NeedService.cs" :28 :31)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\NeedService.cs" :30 :12) // Not a variable of known type: _needs
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\NeedService.cs" :30 :29) // Not a variable of known type: need
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\NeedService.cs" :30 :12) // _needs.InsertOne(need) (InvocationExpression)
%4 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\NeedService.cs" :31 :19) // Not a variable of known type: need
return %4 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\NeedService.cs" :31 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function GetNeedsByUser(none), it contains poisonous unsupported syntaxes

// Skipping function GetDoneNeedsByUser(none), it contains poisonous unsupported syntaxes

// Skipping function DeleteNeed(none), it contains poisonous unsupported syntaxes

