let rec and_tuples (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
match test_tup1, test_tup2 with
| test_tup1t1 :: test_tup1t2 :: test_tup1t3 :: test_tup1t4 ::, test_tup2t1 :: test_tup2t2 :: test_tup2t3 :: test_tup2t4 :: ->
and_tuples (test_tup1t2, test_tup1t3, test_tup1t4, test_tup1t5) (test_tup1t2, test_tup1t3, test_tup1t4, test_tup1t5)
| _ -> failwith "unequal_ tuples"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the elementwise and tuples from the given two tuples. *)
