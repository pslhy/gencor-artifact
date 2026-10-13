(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a given tuple of positive integers into a single integer. *)
let rec tuple_to_int (nums :  int * int * int) : int =
  match nums with
  | (x, y, z) -> x * 1000 + y * 100 + z * 10

let tuple_to_int (5, 7, 9)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_to_int (nums :  int * int * int) : int =
  match nums with
  | (x, y, z) -> x * 1000 + y * 100 + z * 10

