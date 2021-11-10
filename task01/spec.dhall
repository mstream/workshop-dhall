let solution = ./solution.dhall

let input = [ 1, 2, 3, 4, 5 ]

let example0 = assert : solution.double input === [ 2, 4, 6, 8, 10 ]

let example1 = assert : solution.even input === [ 2, 4 ]

let example2 = assert : solution.sum input === 15

let example3 = assert : solution.join input === "12345"

let example4 =
        assert
      :     solution.even2 input
        ===  toMap
               { `1` = "nope"
               , `2` = "yup"
               , `3` = "nope"
               , `4` = "yup"
               , `5` = "nope"
               }

in  "well done!"
