(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a positive integer n, return the count of the numbers of n-digit *)
(*     positive integers that start or end with 1. *)
let rec starts_one_ends (n : int) : int = 
    if n = 1 then 1 else 19 * Int32.to_int (Int32.pow 10 (n - 2))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:45: Unbound value "Int32.pow" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec starts_one_ends (n : int) : int = 
    if n = 1 then 1 else 19 * int_of_float (Float.pow 10.0 (float (n - 2)))

