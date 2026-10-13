let rec add_pairwise (test_tup :  int * int * int * int * int) :  int * int * int * int =
  match test_tup with
  | (x1, x2, x3, x4, x5) -> (x1 + x2, x2 + x3, x3 + x4, x4 + x5)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the pairwise addition of the neighboring elements of the given tuple. *)
