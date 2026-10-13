(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
let rec even_binomial_Coeff_Sum (n : int) : int =
  if n = 0 then 0
  else if n = 1 then 1
  else
    let next_coeff = even_binomial_Coeff_Sum (n - 1) in
    let current_coeff = (n \* (n - 1)) \/ 2 in
    current_coeff + next_coeff

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:28: Illegal character (\\) *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_binomial_Coeff_Sum (n : int) : int =
  match n with
  | 1 | 0 -> 1
  | _ ->
     let next_coeff = even_binomial_Coeff_Sum (n - 1) in
     let current_coeff = (n * (n - 1)) / 2 in
     current_coeff + next_coeff

