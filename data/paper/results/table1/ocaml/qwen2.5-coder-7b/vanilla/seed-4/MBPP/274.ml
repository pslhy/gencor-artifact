let rec even_binomial_Coeff_Sum (n : int) : int = 
  let rec binomial_Coefficient (n : int) (k : int) : int =
    if k = 0 || k = n then 1
    else binomial_Coefficient (n - 1) (k - 1) + binomial_Coefficient (n - 1) k
  in
  let rec sum_even_index_binomial_Coeff (n : int) (acc : int) (index : int) : int =
    if index > n then acc
    else sum_even_index_binomial_Coeff n (acc + if index land 1 = 0 then binomial_Coefficient n index else 0) (index + 1)
  in
  sum_even_index_binomial_Coeff n 0 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
