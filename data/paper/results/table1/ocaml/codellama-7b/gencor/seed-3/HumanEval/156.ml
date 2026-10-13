
let rec int_to_mini_roman (number : int) : string =
  if number = 0 then
    ""
  else (
    let (digit, rest) = (number mod 10, number / 10) in
    match rest = 10 with
    | true -> "x"
    | false ->
      let (ones, rest) = (rest mod 10, rest / 10) in
      if ones = 1 then
        "x"
      else (
        match rest = 2 with
        | true -> "xx"
        | false ->
          let (twos, rest) = (rest mod 10, rest / 10) in
          if twos = 2 then
            "xx"
          else (
            let (fives, rest) = (rest mod 10, rest / 10) in
            if fives = 5 then
              "v"
            else (
              let (tens, rest) = (rest mod 10, rest / 10) in
              if tens = 1 then
                "x"
              else (
                match rest = 5 with
                | true -> "v"
                | false ->
                  let (fifty, rest) = (rest mod 10, rest / 10) in
                  if fifty = 5 then
                    "l"
                  else (
                    let (ones_rest, rest) = (rest mod 10, rest / 10) in
                    int_to_mini_roman rest
                  )
              )
            )
          )
      )
    )
  |> String.concat "" [int_to_mini_roman (number - 1); "i"]

let int_to_mini_roman number =
  if number < 1 || number > 1000 then
    failwith "invalid number"
  else
    int_to_mini_roman number

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer, obtain its roman numeral equivalent as a string, *)
(*     and return it in lowercase. *)
(*     Restrictions: 1 <= num <= 1000 *)
(*     Examples: *)
(*     >>> int_to_mini_roman 19 *)
(*     "xix" *)
(*     >>> int_to_mini_roman 152 *)
(*     "clii" *)
(*     >>> int_to_mini_roman 426 *)
(*     "cdxxvi" *)
