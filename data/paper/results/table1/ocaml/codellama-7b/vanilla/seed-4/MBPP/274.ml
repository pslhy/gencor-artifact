let rec even_binomial_Coeff_Sum (n : int) : int = 
    (* base case: n = 0 *)
    if n = 0 then 0
    (* recursive case: *)
    else 
        
         (* sum of current binomial coefficient and recursive call for next index *)
        (binomial_Coeff n 0) 
        + even_binomial_Coeff_Sum (n-1)

and binomial_Coeff (n : int) (k : int) = 
    if n < k or k < 0 then 0
    else 
        match n = k, n = 0 with
        | true, _ -> 1
        | false, true -> 0
        | _, false -> binomial_Coeff (n-1) (k-1) * n / k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
