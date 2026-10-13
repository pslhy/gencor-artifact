(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function which takes two tuples of the same length and performs the element wise modulo. *)
let rec tuple_modulo (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    let (x1, x2, x3, x4) = test_tup1 in
    let (y1, y2, y3, y4) = test_tup2 in
    let z1 = x1 mod y1 in
    let z2 = x2 mod y2 in
    let z3 = x3 mod y3 in
    let z4 = x4 mod y4 in
    (z1, z2, z3, z4)

