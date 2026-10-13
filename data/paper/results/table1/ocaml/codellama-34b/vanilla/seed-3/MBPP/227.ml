let rec min_of_three (a : int) (b : int) (c : int) : int =
  if a < b then
    if a < c then a
    else c
  else if b < c then b
  else c


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum of three numbers. *)
