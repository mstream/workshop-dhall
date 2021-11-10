let std = ../prelude.dhall

let Person =
      { firstName : Text
      , lastName : Text
      , age : Natural
      , phoneNumbers : List Text
      }

let Serialized = { original : Person, json : std.JSON.Type, text : Text }

in  { Person, Serialized }
