
let rec move_num (test_str : string) : string =
    match test_str with
    | [] -> []
    | h::t -> if Char.code h >= 48 && Char.code h <= 57 then move_num t ^ [h]
             else h::move_num t ^ [h]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
