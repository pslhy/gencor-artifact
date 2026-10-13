let rec find_dissimilar (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    let (a, b, c, d) = test_tup1 in
    let (x, y, z, w) = test_tup2 in
    (if a <> x then a else 0),
    (if b <> y then b else 0),
    (if c <> z then c else 0),
    (if d <> w then d else 0)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the dissimilar elements in the given two tuples. *)
