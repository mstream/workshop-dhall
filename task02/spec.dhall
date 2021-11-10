let solution = ./solution.dhall

let std = ../prelude.dhall

let types = ./types.dhall

let input
    : List types.Person
    = [ { firstName = "Adam"
        , lastName = "Smith"
        , age = 40
        , phoneNumbers = [ "111 111 111", "222 222 222" ]
        }
      , { firstName = "Alice"
        , lastName = "Cooper"
        , age = 30
        , phoneNumbers = [ "333 333 333" ]
        }
      ]

let example0 =
        assert
      :     solution.serialize input
        ===  [ { original = input, json = std.JSON.null, text = "" } ]

in  "well done!"
