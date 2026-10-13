let rec substract_elements (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) :  int * int * int = 
    let subtract_helper a b = a - b in 
    let res1 = subtract_helper (fst test_tup1) (fst test_tup2) in 
    let res2 = subtract_helper (snd test_tup1) (snd test_tup2) in 
    let res3 = subtract_helper (trd test_tup1) (trd test_tup2) in 
    (res1, res2, res3)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in two tuples and subtracts the elements of the first tuple by the elements of the second tuple with the same index. *)
