let rec int_to_mini_roman (number : int) : string =
    if number = 1 then
        "i"
    else if number = 5 then
        "v"
    else if number = 10 then
        "x"
    else if number = 50 then
        "l"
    else if number = 100 then
        "c"
    else if number = 500 then
        "d"
    else if number = 1000 then
        "m"
    else if number mod 10 = 9 then
        "ix"
    else if number mod 5 = 4 then
        "iv"
    else if number mod 10 = 4 then
        "x"
    else if number mod 5 = 9 then
        "x"
    else if number mod 100 = 90 then
        "xc"
    else if number mod 50 = 40 then
        "xc"
    else if number mod 100 = 40 then
        "xc"
    else if number mod 500 = 900 then
        "dc"
    else if number mod 100 = 90 then
        "xc"
    else
        "x"


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
