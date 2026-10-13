
let rec starts_one_ends (n : int) : int =
  if n = 0 then 0 else
  if n = 1 then 1 else
  let pow_2_n_minus_2 = int_of_float (sqrt (float_of_int n)) in
  pow_2_n_minus_2 * pow_2_n_minus_2

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the count of the numbers of n-digit *)
(*     positive integers that start or end with 1. *)
