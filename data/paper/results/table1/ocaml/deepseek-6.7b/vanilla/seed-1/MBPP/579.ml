let rec find_dissimilar (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
  match (test_tup1, test_tup2) with
  | ((a1, b1, c1, d1), (a2, b2, c2, d2)) ->
       if a1 <> a2 || b1 <> b2 || c1 <> c2 || d1 <> d2 then test_tup1 else test_tup2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the dissimilar elements in the given two tuples. *)
