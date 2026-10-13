let rec int_to_mini_roman (number : int) : string =
    let rec aux (number : int) (roman : string) : string * int =
        match (number / 1000, number mod 1000) with
        | (m, 0) -> (roman, m), 0
        | (m, n) ->
            let (roman, m) = aux (m * 1000 + n) "" in
            (roman, m), (m / 1000)
    in
    let (roman, _) = aux number "" in
    roman
    
let int_to_mini_roman number = int_to_mini_roman number |> String.lowercase_ascii


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
