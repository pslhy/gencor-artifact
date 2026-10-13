(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to perform the mathematical bitwise xor operation across the given tuples. *)
let rec bitwise_xor (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
    let (a1, b1, c1, d1) = test_tup1
    let (a2, b2, c2, d2) = test_tup2
    (a1 lxor a2, b1 lxor b2, c1 lxor c2, d1 lxor d2)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec bitwise_xor (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
    let (a1, b1, c1, d1) = test_tup1
    let (a2, b2, c2, d2) = test_tup2
    (a1 lxor a2, b1 lxor b2, c1 lxor c2, d1 lxor d2)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec bitwise_xor (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
    let (a1, b1, c1, d1) = test_tup1 in
    let (a2, b2, c2, d2) = test_tup2 in
    (a1 lxor a2, b1 lxor b2, c1 lxor c2, d1 lxor d2)

