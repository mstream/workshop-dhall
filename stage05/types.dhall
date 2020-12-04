let Role = < Developer | Manager | Tester >

let Spouse = Optional { firstName : Text }

let Person =
      { firstName : Text
      , lastName : Text
      , age : Natural
      , spouse : Spouse
      , role : Role
      , contracting : Bool
      , intrests : List Text
      , department : Text
      , team : Text
      , slack : Text
      , email : Text
      }

in  { Role, Spouse, Person }
