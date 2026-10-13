(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
let rec move_num (test_str : string) : string =
    if test_str = "" then ""
    else if Char.code (String.get test_str 0) >= Char.code '0' &&
      Char.code (String.get test_str 0) <= Char.code '9'
    then
      String.make 1 (String.get test_str 0) ^ (move_num (String.sub test_str 1 ((String.length test_str) - 1)))
    else
      (String.make 1 (String.get test_str 0)) ^ (move_num (String.sub test_str 1 ((String.length test_str) - 1)))

