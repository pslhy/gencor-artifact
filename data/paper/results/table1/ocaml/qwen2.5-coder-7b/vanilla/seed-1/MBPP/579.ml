let rec find_dissimilar (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
  let rec check (tup1 :  int * int * int * int) (tup2 :  int * int * int * int) :  int * int * int * int = 
    match tup1, tup2 with
    | (a1, a2, a3, a4), (b1, b2, b3, b4) -> 
      (if a1 <> b1 then a1 else 0, if a2 <> b2 then a2 else 0, 
       if a3 <> b3 then a3 else 0, if a4 <> b4 then a4 else 0)
  in
  check test_tup1 test_tup2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the dissimilar elements in the given two tuples. *)
