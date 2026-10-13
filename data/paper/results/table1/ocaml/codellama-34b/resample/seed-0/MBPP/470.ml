(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the pairwise addition of the neighboring elements of the given tuple. *)
let rec add_pairwise (test_tup :  int * int * int * int * int) :  int * int * int * int =
  match tup with
  | (x, y, z, a, b) -> (x + y, y + z, z + a, a + b)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:9: Unbound value "tup" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec add_pairwise (test_tup :  int * int * int * int * int) :  int * int * int * int =
  match test_tup with
  | (x, y, z, a, b) -> (x + y, y + z, z + a, a + b)

