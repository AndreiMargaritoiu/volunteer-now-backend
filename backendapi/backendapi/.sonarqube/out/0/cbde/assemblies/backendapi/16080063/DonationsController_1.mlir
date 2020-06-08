func @_backendapi.Controllers.DonationsController.Get$string$(none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :26 :8) {
^entry (%_id : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :27 :43)
cbde.store %_id, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :27 :43)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :29 :28) // Not a variable of known type: _donationsService
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :29 :58) // Not a variable of known type: id
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :29 :28) // _donationsService.GetDonation(id) (InvocationExpression)
%5 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :31 :16) // Not a variable of known type: donations
%6 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :31 :29) // null (NullLiteralExpression)
%7 = cbde.unknown : i1  loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :31 :16) // comparison of unknown type: donations == null
cond_br %7, ^1, ^2 loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :31 :16)

^1: // JumpBlock
// Entity from another assembly: NotFound
%8 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :33 :23) // NotFound() (InvocationExpression)
return %8 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :33 :16)

^2: // JumpBlock
%9 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :36 :19) // Not a variable of known type: donations
return %9 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :36 :12)

^3: // ExitBlock
cbde.unreachable

}
func @_backendapi.Controllers.DonationsController.UpdateDonation$string.backendapi.Models.Donations$(none, none) -> none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :40 :8) {
^entry (%_id : none, %_donations : none):
%0 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :41 :54)
cbde.store %_id, %0 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :41 :54)
%1 = cbde.alloca none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :41 :64)
cbde.store %_donations, %1 : memref<none> loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :41 :64)
br ^0

^0: // BinaryBranchBlock
%2 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :44 :32) // Not a variable of known type: _donationsService
%3 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :44 :62) // Not a variable of known type: id
%4 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :44 :32) // _donationsService.GetDonation(id) (InvocationExpression)
%6 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :45 :15) // Not a variable of known type: DonationCheck
%7 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :45 :32) // null (NullLiteralExpression)
%8 = cbde.unknown : i1  loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :45 :15) // comparison of unknown type: DonationCheck == null
cond_br %8, ^1, ^2 loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :45 :15)

^1: // JumpBlock
// Entity from another assembly: NotFound
%9 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :47 :23) // NotFound() (InvocationExpression)
return %9 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :47 :16)

^2: // JumpBlock
%10 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :50 :12) // Not a variable of known type: _donationsService
%11 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :50 :45) // Not a variable of known type: id
%12 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :50 :49) // Not a variable of known type: donations
%13 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :50 :12) // _donationsService.UpdateDonation(id, donations) (InvocationExpression)
// Entity from another assembly: NoContent
%14 = cbde.unknown : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :51 :19) // NoContent() (InvocationExpression)
return %14 : none loc("F:\\faculta\\ANIII\\Valean\\GitHubProj\\II_2020_Backend\\backendapi\\backendapi\\Controllers\\DonationsController.cs" :51 :12)

^3: // ExitBlock
cbde.unreachable

}
