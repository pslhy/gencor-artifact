let rec sum_Of_product (n : int) : int =
    let binomialCoefficient (n : int) (k : int) : int =
        if (k = 0 || k = n) then 1
        else (binomialCoefficient (n-1) (k-1)) + (binomialCoefficient (n-1) k)
    in
    if (n < 2) then n
    else (binomialCoefficient n n) + (sum_Of_product (n-1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the product of consecutive binomial co-efficients. *)
