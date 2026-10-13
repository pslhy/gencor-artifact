let rec tuple_to_int (nums :  int * int * int) : int = 
  let (x, y, z) = nums in 
  x * 1000 + y * 100 + z * 10


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a given tuple of positive integers into a single integer. *)
