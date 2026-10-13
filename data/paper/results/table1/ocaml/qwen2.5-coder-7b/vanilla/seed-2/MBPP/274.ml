let rec even_binomial_Coeff_Sum (n : int) : int = 
    let rec binomial_coefficient (n : int) (k : int) : int = 
        if k = 0 || k = n then 1 
        else binomial_coefficient (n - 1) (k - 1) + binomial_coefficient (n - 1) k 
    in 
    let rec sum_even_index_binomials (n : int) (sum : int) (index : int) : int = 
        if index > n then sum 
        else sum_even_index_binomials n (sum + binomial_coefficient n index) (index + 2) 
    in 
    sum_even_index_binomials n 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
