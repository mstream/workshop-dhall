let Prelude =
      https://raw.githubusercontent.com/dhall-lang/dhall-lang/v19.0.0/Prelude/package.dhall

let types = ./types.dhall

let makePerson = ./makePerson.dhall

let peopleInfo = ./peopleInfo.dhall

let isMarried =
      λ(person : types.Person) →
        Prelude.Bool.not
          (Prelude.Optional.null { firstName : Text } person.spouse)

let intrestInGolf =
      λ(person : types.Person) →
        person
        with intrests = person.intrests # [ "golf with friends" ]

let people =
      Prelude.List.map
        makePerson.MakePersonInfo
        types.Person
        makePerson.make
        peopleInfo

let marriedPeople = Prelude.List.filter types.Person isMarried people

in  Prelude.List.map types.Person types.Person intrestInGolf marriedPeople
