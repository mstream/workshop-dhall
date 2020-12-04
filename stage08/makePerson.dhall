let types = ./types.dhall

let MakePersonInfo =
      { firstName : Text
      , lastName : Text
      , age : Natural
      , spouse : types.Spouse
      , role : types.Role
      , contracting : Bool
      , intrests : List Text
      }

let department = "OVP"

let team = "Stratos"

let slack = "${department}-${team}"

let makeEmail =
      λ(firstName : Text) →
      λ(lastName : Text) →
        "${firstName}.${lastName}@sky.uk"

let makePerson
    : MakePersonInfo → types.Person
    = λ(info : MakePersonInfo) →
          info
        ⫽ { department
          , team
          , slack
          , email = makeEmail info.firstName info.lastName
          }

in  { MakePersonInfo, make = makePerson }
