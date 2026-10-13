
let rec sum_Of_product (n : int) : int = 
    (* base case: n = 1 *)
    if n = 1 then 1
    (* recursive case: *)
    else 
        
         (* compute product of consecutive binomial co-efficients *)
         let product = (n/2) * ((n+1) / 2) in
         
         (* sum up the product *)
         sum_Of_product (n-1) + product

(* Example: *)
let result = sum_Of_product 5 in_channel_length

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the product of consecutive binomial co-efficients. *)
