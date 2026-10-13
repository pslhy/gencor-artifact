let rec tuple_modulo (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
  match (test_tup1, test_tup2) with
  | ((a, b), (c, d)), ((e, f), (g, h)) -> ((a mod e), (b mod f), (c mod g), (d mod h))

let test1 = tuple_modulo (10, 20, 30, 40) (2, 3, 5, 7) (* returns (0, 2, 0, 4) *)
let test2 = tuple_modulo (12, 14, 15, 16) (3, 2, 4, 6) (* returns (0, 0, 1, 0) *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which takes two tuples of the same length and performs the element wise modulo. *)
