let department = "OVP"

let team = "Stratos"

let slack = "${department}-${team}"

let makeEmail =
      λ(firstName : Text) →
      λ(lastName : Text) →
        "${firstName}.${lastName}@sky.uk"

let makePerson =
      λ ( info
        : { firstName : Text
          , lastName : Text
          , age : Natural
          , spouse : Optional { firstName : Text }
          , role : < Developer | Manager | Tester >
          , contracting : Bool
          , intrests : List Text
          }
        ) →
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
        , role = < Developer | Manager | Tester >.Tester
        , contracting = False
        , intrests = [ "spikes", "tomatoes", "Stephan" ]
        }
    , makePerson
        { firstName = "Warren"
        , lastName = "Haskins"
        , age = 30
        , spouse = None { firstName : Text }
        , role = < Developer | Manager | Tester >.Developer
        , contracting = False
        , intrests = [ "gym", "rice", "beef" ]
        }
    , makePerson
        { firstName = "Jason"
        , lastName = "Soutar"
        , age = 33
        , spouse = Some { firstName = "Emma" }
        , role = < Developer | Manager | Tester >.Developer
        , contracting = False
        , intrests = [ "whisky ", "hacking", "Factorio" ]
        }
    , makePerson
        { firstName = "Bhaskar"
        , lastName = "Rao"
        , age = 98
        , spouse = Some { firstName = "Divya" }
        , role = < Developer | Manager | Tester >.Developer
        , contracting = True
        , intrests = [ "carrots", "functional tests", "hazelcast" ]
        }
    ]
