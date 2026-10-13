(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function which takes two tuples of the same length and performs the element wise modulo. *)
let rec tuple_modulo (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
    (mod (fst test_tup1) (fst test_tup2)),
        (mod (snd test_tup1) (snd test_tup2)),
        (mod (thrd test_tup1) (thrd test_tup2)),
        (mod (fou test_tup1) (fou test_tup2));;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:10: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_modulo (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
    ((fst test_tup1) mod (fst test_tup2)),
    ((snd test_tup1) mod (snd test_tup2)),
    ((snd test_tup1) mod (snd test_tup2)),
    ((fou test_tup1) mod (fou test_tup2));;

