func @_backendapi.Services.UserService.Create$backendapi.Models.User$(none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\UserService.cs" :33 :8) {
^entry (%_user : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\UserService.cs" :33 :27)
cbde.store %_user, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\UserService.cs" :33 :27)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\UserService.cs" :36 :12) // Not a variable of known type: user
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\UserService.cs" :36 :12) // user.NeedsIds (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\UserService.cs" :36 :28) // new List<MongoDB.Bson.ObjectId>() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\UserService.cs" :37 :12) // Not a variable of known type: _users
%5 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\UserService.cs" :37 :29) // Not a variable of known type: user
%6 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\UserService.cs" :37 :12) // _users.InsertOne(user) (InvocationExpression)
%7 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\UserService.cs" :38 :19) // Not a variable of known type: user
return %7 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Services\\UserService.cs" :38 :12)

^1: // ExitBlock
cbde.unreachable

}
