
let rec tuple_modulo (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
  match test_tup1 with
  | t11, t12, t13, t14 ->
    match test_tup2 with
    | t21, t22, t23, t24 ->
      (t11 mod t21, t12 mod t22, t13 mod t23, t14 mod t24)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which takes two tuples of the same length and performs the element wise modulo. *)
