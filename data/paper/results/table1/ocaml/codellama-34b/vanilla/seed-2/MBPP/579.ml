let rec find_dissimilar (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
    let (a1, b1, c1, d1) = test_tup1
    let (a2, b2, c2, d2) = test_tup2
    if a1 <> a2 then (a1, b1, c1, d1)
    else if b1 <> b2 then (a1, b1, c1, d1)
    else if c1 <> c2 then (a1, b1, c1, d1)
    else if d1 <> d2 then (a1, b1, c1, d1)
    else (-1, -1, -1, -1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the dissimilar elements in the given two tuples. *)
