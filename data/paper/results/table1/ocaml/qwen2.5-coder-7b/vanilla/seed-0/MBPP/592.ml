let rec sum_Of_product (n : int) : int = 
  let rec binomial_coefficient (n : int) (k : int) : int =
    if k = 0 || k = n then 1
    else binomial_coefficient (n-1) (k-1) + binomial_coefficient (n-1) k
  in
  let rec sum (start : int) (end_ : int) (acc : int) : int =
    if start > end_ then acc
    else sum (start+1) end_ (acc + (binomial_coefficient n start) * (binomial_coefficient n (start+1)))
  in
  sum 0 n 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the product of consecutive binomial co-efficients. *)
