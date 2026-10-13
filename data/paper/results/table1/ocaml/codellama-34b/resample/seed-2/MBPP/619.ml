(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
let rec move_num (test_str : string) : string =
    match test_str with
    | [] -> []
    | h::t -> if Char.is_number h then (move_num t)@[h]
    | h::t -> [h]@(move_num t)
``
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec move_num (test_str : string) : string =
    match test_str with
    | [] -> ""
    | h::t -> if Char.is_number h then (move_num t) ^ String.make 1 h
    | h::t -> String.make 1 h ^ (move_num t)

