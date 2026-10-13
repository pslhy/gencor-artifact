let rec sum_Of_product (n : int) : int = 
  let rec binomial_coefficient (n : int) (k : int) : int = 
    if k = 0 || k = n then 1
    else binomial_coefficient (n - 1) (k - 1) + binomial_coefficient (n - 1) k
  in
  let rec sum_product_helper (i : int) : int = 
    if i = n then 0
    else (binomial_coefficient n i * binomial_coefficient n (i + 1)) + sum_product_helper (i + 1)
  in
  sum_product_helper 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the product of consecutive binomial co-efficients. *)
