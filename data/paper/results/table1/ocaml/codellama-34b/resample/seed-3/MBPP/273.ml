(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in two tuples and subtracts the elements of the first tuple by the elements of the second tuple with the same index. *)
let rec substract_elements (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) :  int * int * int = 
    let (a, b, c) = test_tup1 in
    let (d, e, f) = test_tup2 in
    (a - d, b - e, c - f)

