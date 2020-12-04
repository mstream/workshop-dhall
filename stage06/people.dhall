let Prelude =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v19.0.0/Prelude/package.dhall

let types = ./types.dhall

let makePerson = ./makePerson.dhall

let peopleInfo = ./peopleInfo.dhall

let people =
      Prelude.List.map
        makePerson.MakePersonInfo
        types.Person
        makePerson.make
        peopleInfo

in  people
