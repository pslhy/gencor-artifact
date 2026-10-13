let rec move_num (test_str : string) : string =
  if test_str = "" then ""
  else if Char.is_number test_str.[0] then test_str.[0] ^ move_num test_str.[1..]
  else move_num test_str.[1..]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
