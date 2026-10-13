let rec starts_one_ends (n : int) : int =
  if n = 0 then 0 else
  if n = 1 then 1 else
  let pow_2_n_minus_2 = pow 2 (n - 2) in
  pow_2_n_minus_2 + 2 * starts_one_ends (n - 2)

let starts_one (n : int) : int =
  starts_one_ends (n - 1)

let ends_one (n : int) : int =
  starts_one_ends (n - 1)

let count_one_start_end (n : int) : int =
  starts_one n + ends_one n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the count of the numbers of n-digit *)
(*     positive integers that start or end with 1. *)
