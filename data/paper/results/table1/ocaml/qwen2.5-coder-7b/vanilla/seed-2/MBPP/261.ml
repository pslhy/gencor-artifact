let rec division_elements (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    let divide x y = x / y in
    (divide (fst test_tup1) (fst test_tup2), 
     divide (snd test_tup1) (snd test_tup2), 
     divide (fst3 test_tup1) (fst3 test_tup2), 
     divide (snd4 test_tup1) (snd4 test_tup2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in two tuples and performs mathematical division operation element-wise across the given tuples. *)
