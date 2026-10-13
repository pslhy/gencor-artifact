(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract the elementwise and tuples from the given two tuples. *)
let rec and_tuples (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
match test_tup1, test_tup2 with
| (tup11,tup12,_,_),(tup21,tup22,_,_) -> tup11 && tup21, tup12 && tup22

