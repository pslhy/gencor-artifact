
let rec bitwise_xor (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    let (x1, x2, x3, x4) = test_tup1 in
    let (y1, y2, y3, y4) = test_tup2 in
    let z1 = x1 lxor y1 in
    let z2 = x2 lxor y2 in
    let z3 = x3 lxor y3 in
    let z4 = x4 lxor y4 in
    (z1, z2, z3, z4)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform the mathematical bitwise xor operation across the given tuples. *)
