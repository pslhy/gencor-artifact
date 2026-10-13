let rec min_of_three (a : int) (b : int) (c : int) : int = 
  let min_ab = if a < b then a else b in
  if min_ab < c then min_ab else c


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum of three numbers. *)
