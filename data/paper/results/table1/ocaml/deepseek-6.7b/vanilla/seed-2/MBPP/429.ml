let rec and_tuples (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
  (fst test_tup1 && fst test_tup2,
   snd test_tup1 && snd (fst test_tup2),
   snd test_tup2 && snd test_tup1,
   snd test_tup2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the elementwise and tuples from the given two tuples. *)
