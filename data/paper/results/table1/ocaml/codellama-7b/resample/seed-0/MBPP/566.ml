(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to get the sum of the digits of a non-negative integer. *)
let rec sum_digits (n : int) : int =
  if n = 0 then 0
  else n % 10 + sum_digits (n / 10)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:10: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum_digits (n : int) : int =
  if n = 0 then 0
  else (n mod 10) + sum_digits (n / 10)

