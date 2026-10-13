let rec sum_Of_product (n : int) : int = 
    (* base case: n = 1 *)
    if n = 1 then 1
    (* recursive case: *)
    else 
        
         (* compute product of consecutive binomial co-efficients *)
         let product = binomial_coefficient n n *
         binomial_coefficient n (n-1) * 
         binomial_coefficient n (n-2) in
     
         (* recurse with n-1 *)
         sum_Of_product (n-1) + product

(* helper function to compute binomial co-efficient *)
let rec binomial_coefficient (n : int) (k : int) : int =
    if n < k or k < 0 then 0
    else if k = 0 or k = n then 1
    else binomial_coefficient (n-1) (k-1) + binomial_coefficient (n-1) k



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the product of consecutive binomial co-efficients. *)
