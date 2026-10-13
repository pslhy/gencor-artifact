let rec tuple_modulo (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    match (test_tup1, test_tup2) with
    | (a1, a2, a3, a4), (b1, b2, b3, b4) ->
        (a1 mod b1, a2 mod b2, a3 mod b3, a4 mod b4)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which takes two tuples of the same length and performs the element wise modulo. *)
