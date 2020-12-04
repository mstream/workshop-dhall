let Prelude =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v19.0.0/Prelude/package.dhall

let types = ./types.dhall

let makePerson = ./makePerson.dhall

let peopleInfo = ./peopleInfo.dhall

let isMarried =
      λ(person : types.Person) →
        Prelude.Bool.not
          (Prelude.Optional.null { firstName : Text } person.spouse)

let isUnmarried =
      Prelude.Function.compose types.Person Bool Bool isMarried Prelude.Bool.not

let people =
      Prelude.List.map
        makePerson.MakePersonInfo
        types.Person
        makePerson.make
        peopleInfo

let marriedPeople = Prelude.List.filter types.Person isMarried people

let unmarriedPeople = Prelude.List.filter types.Person isUnmarried people

let personToMapEntry =
      λ(person : types.Person) →
        { mapKey = "${person.firstName}_${person.lastName}.yml"
        , mapValue =
            Prelude.JSON.renderYAML
              ( Prelude.JSON.object
                  [ { mapKey = "age"
                    , mapValue =
                        Prelude.JSON.integer
                          (Prelude.Natural.toInteger person.age)
                    }
                  , { mapKey = "contracting"
                    , mapValue = Prelude.JSON.bool person.contracting
                    }
                  , { mapKey = "email"
                    , mapValue = Prelude.JSON.string person.email
                    }
                  ]
              )
        }

in  { married =
        Prelude.List.map
          types.Person
          (Prelude.Map.Entry Text Text)
          personToMapEntry
          marriedPeople
    , unmarried =
        Prelude.List.map
          types.Person
          (Prelude.Map.Entry Text Text)
          personToMapEntry
          unmarriedPeople
    }
