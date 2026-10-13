let rec even_binomial_Coeff_Sum (n : int) : int = 
  let rec binomial_coefficient (n : int) (k : int) : int =
    if k = 0 || k = n then 1 else
    binomial_coefficient (n - 1) (k - 1) + binomial_coefficient (n - 1) k
  in
  let rec sum_even_index coefficients sum =
    match coefficients with
    | [] -> sum
    | x :: xs -> sum_even_index xs (sum + x)
  in
  let binomials = Array.init (n + 1) (fun i -> binomial_coefficient n i) in
  sum_even_index (Array.to_list binomials) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
