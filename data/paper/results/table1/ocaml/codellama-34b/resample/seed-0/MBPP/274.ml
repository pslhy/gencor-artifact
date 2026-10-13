(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
let rec even_binomial_Coeff_Sum (n : int) : int =
    if n = 1 then 1
    else if n = 2 then 2
    else if n mod 2 = 0 then (n / 2) * (n / 2 + 1) + even_binomial_Coeff_Sum (n - 2)
    else n + even_binomial_Coeff_Sum (n - 1)

