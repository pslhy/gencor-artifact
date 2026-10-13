
let rec even_binomial_Coeff_Sum (n : int) : int =
  if n = 0 then 0
  else if n = 1 then 1
  else
    let next_coeff = even_binomial_Coeff_Sum (n - 1) in
    let current_coeff = (n - 1) * next_coeff in
    current_coeff

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
