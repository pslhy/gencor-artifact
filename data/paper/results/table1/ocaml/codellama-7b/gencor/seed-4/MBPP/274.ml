
let rec even_binomial_Coeff_Sum (n : int) : int = 
    (* base case: n = 0 *)
    if n = 0 then 0
    (* recursive case: *)
    else 
        
         (* sum of current binomial coefficient and recursive call for next index *)
        (n * (n + 1))::( even_binomial_Coeff_Sum (n - 1) )
    
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
