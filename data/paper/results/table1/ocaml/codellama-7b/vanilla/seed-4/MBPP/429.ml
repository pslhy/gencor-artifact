let rec and_tuples (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    match (test_tup1, test_tup2) with
    (test_tup11, test_tup21)
         -> (fst test_tup11, snd test_tup11, fst test_tup21, snd test_tup21) ; 
    


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the elementwise and tuples from the given two tuples. *)
