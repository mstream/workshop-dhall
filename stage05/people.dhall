let types = ./types.dhall

let makePerson = ./makePerson.dhall

in  [ makePerson
        { firstName = "Andrew"
        , lastName = "Testa"
        , age = 99
        , spouse = Some { firstName = "Helen" }
        , role = types.Role.Tester
        , contracting = False
        , intrests = [ "spikes", "tomatoes", "Stephan" ]
        }
    , makePerson
        { firstName = "Warren"
        , lastName = "Haskins"
        , age = 30
        , spouse = None { firstName : Text }
        , role = types.Role.Developer
        , contracting = False
        , intrests = [ "gym", "rice", "beef" ]
        }
    , makePerson
        { firstName = "Jason"
        , lastName = "Soutar"
        , age = 33
        , spouse = Some { firstName = "Emma" }
        , role = types.Role.Developer
        , contracting = False
        , intrests = [ "whisky ", "hacking", "Factorio" ]
        }
    , makePerson
        { firstName = "Bhaskar"
        , lastName = "Rao"
        , age = 98
        , spouse = Some { firstName = "Divya" }
        , role = types.Role.Developer
        , contracting = True
        , intrests = [ "carrots", "functional tests", "hazelcast" ]
        }
    ]
