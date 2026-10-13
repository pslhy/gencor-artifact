let rec int_to_mini_roman (number : int) : string =
    match number with
    | 1 -> "i"
    | 4 -> "iv"
    | 5 -> "v"
    | 9 -> "ix"
    | 10 -> "x"
    | 40 -> "xl"
    | 50 -> "l"
    | 90 -> "xc"
    | 100 -> "c"
    | 400 -> "cd"
    | 500 -> "d"
    | 900 -> "cm"
    | 1000 -> "m"
    | _ -> failwith "Invalid input"


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
