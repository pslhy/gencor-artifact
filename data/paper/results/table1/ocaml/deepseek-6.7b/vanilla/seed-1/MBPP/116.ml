let rec tuple_to_int (nums :  int * int * int) : int =
  match nums with
  | (a, b, c) -> a * 100000 + b * 1000 + c


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a given tuple of positive integers into a single integer. *)
