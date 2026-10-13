let rec tuple_to_int (nums :  int * int * int) : int =
  let d1, d2, d3 = nums in
  if d1 = 0 then d2*100 + d3
  else if d2 = 0 then d1*100 + d3
  else if d3 = 0 then d1*100 + d2
  else d1*100*d2 + d3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a given tuple of positive integers into a single integer. *)
