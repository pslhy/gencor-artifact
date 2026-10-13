let rec int_to_mini_roman (number : int) : string =
    match number with
    | n when n <= 0 -> ""
    | 1000 -> "m" ^ int_to_mini_roman (number - 1000)
    | 900 -> "cm" ^ int_to_mini_roman (number - 900)
    | 500 -> "d" ^ int_to_mini_roman (number - 500)
    | 400 -> "cd" ^ int_to_mini_roman (number - 400)
    | 100 -> "c" ^ int_to_mini_roman (number - 100)
    | 90 -> "xc" ^ int_to_mini_roman (number - 90)
    | 50 -> "l" ^ int_to_mini_roman (number - 50)
    | 40 -> "xl" ^ int_to_mini_roman (number - 40)
    | 10 -> "x" ^ int_to_mini_roman (number - 10)
    | 9 -> "ix" ^ int_to_mini_roman (number - 9)
    | 5 -> "v" ^ int_to_mini_roman (number - 5)
    | 4 -> "iv" ^ int_to_mini_roman (number - 4)
    | 1 -> "i" ^ int_to_mini_roman (number - 1)
    | _ -> ""
;;


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
