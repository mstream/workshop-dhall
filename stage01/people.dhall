let department = "OVP"

let team = "Stratos"

let slack = "${department}-${team}"

in  [ { firstName = "Andrew"
      , lastName = "Testa"
      , age = 99
      , spouse = Some { firstName = "Helen" }
      , role = < Developer | Manager | Tester >.Tester
      , contracting = False
      , intrests = [ "spikes", "tomatoes", "Stephan" ]
      , department
      , team
      , slack
      , email = "andrew.testa@sky.uk"
      }
    , { firstName = "Warren"
      , lastName = "Haskins"
      , age = 30
      , spouse = None { firstName : Text }
      , role = < Developer | Manager | Tester >.Developer
      , contracting = False
      , intrests = [ "gym", "rice", "beef" ]
      , department
      , team
      , slack
      , email = "warren.haskins@sky.uk"
      }
    , { firstName = "Jason"
      , lastName = "Soutar"
      , age = 33
      , spouse = Some { firstName = "Emma" }
      , role = < Developer | Manager | Tester >.Developer
      , contracting = False
      , intrests = [ "whisky ", "hacking", "Factorio" ]
      , department
      , team
      , slack
      , email = "jason.soutar@sky.uk"
      }
    , { firstName = "Bhaskar"
      , lastName = "Rao"
      , age = 98
      , spouse = Some { firstName = "Divya" }
      , role = < Developer | Manager | Tester >.Developer
      , contracting = True
      , intrests = [ "carrots", "functional tests", "hazelcast" ]
      , department
      , team
      , slack
      , email = "bhaskar.rao@sky.uk"
      }
    ]
