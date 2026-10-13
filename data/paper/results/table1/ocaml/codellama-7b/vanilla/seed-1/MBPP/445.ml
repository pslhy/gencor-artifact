let rec index_multiplication (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
match test_tup1, test_tup2 with
| [], _ -> []
| _, [] -> []
| test_tup1 :: test_tup1_tail, test_tup2 :: test_tup2_tail ->
(List.map2 ( * ) test_tup1 test_tup2) :: (
index_multiplication test_tup1_tail test_tup2_tail);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform index wise multiplication of list elements in the given two lists. *)
