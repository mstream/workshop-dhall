let Role = < Developer | Manager | Tester >

let Spouse = Optional { firstName : Text }

let MakePersonInfo =
      { firstName : Text
      , lastName : Text
      , age : Natural
      , spouse : Spouse
      , role : Role
      , contracting : Bool
      , intrests : List Text
      }

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

let department = "OVP"

let team = "Stratos"

let slack = "${department}-${team}"

let makeEmail =
      λ(firstName : Text) →
      λ(lastName : Text) →
        "${firstName}.${lastName}@sky.uk"

let makePerson
    : MakePersonInfo → Person
    = λ(info : MakePersonInfo) →
          info
        ⫽ { department
          , team
          , slack
          , email = makeEmail info.firstName info.lastName
          }

in  [ makePerson
        { firstName = "Andrew"
        , lastName = "Testa"
        , age = 99
        , spouse = Some { firstName = "Helen" }
        , role = Role.Tester
        , contracting = False
        , intrests = [ "spikes", "tomatoes", "Stephan" ]
        }
    , makePerson
        { firstName = "Warren"
        , lastName = "Haskins"
        , age = 30
        , spouse = None { firstName : Text }
        , role = Role.Developer
        , contracting = False
        , intrests = [ "gym", "rice", "beef" ]
        }
    , makePerson
        { firstName = "Jason"
        , lastName = "Soutar"
        , age = 33
        , spouse = Some { firstName = "Emma" }
        , role = Role.Developer
        , contracting = False
        , intrests = [ "whisky ", "hacking", "Factorio" ]
        }
    , makePerson
        { firstName = "Bhaskar"
        , lastName = "Rao"
        , age = 98
        , spouse = Some { firstName = "Divya" }
        , role = Role.Developer
        , contracting = True
        , intrests = [ "carrots", "functional tests", "hazelcast" ]
        }
    ]
