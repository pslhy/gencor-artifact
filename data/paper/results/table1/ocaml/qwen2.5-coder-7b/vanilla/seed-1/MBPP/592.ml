let rec sum_Of_product (n : int) : int = 
  let rec binomial_coefficient (n : int) (k : int) : int =
    if k = 0 || k = n then 1
    else binomial_coefficient n (k-1) + binomial_coefficient n (k-2)
  in
  let rec product_and_sum (n : int) (current : int) (accumulator : int) : int =
    if current >= n then accumulator
    else product_and_sum n (current+1) (accumulator + (binomial_coefficient n current * binomial_coefficient n (current+1)))
  in
  product_and_sum n 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the product of consecutive binomial co-efficients. *)
