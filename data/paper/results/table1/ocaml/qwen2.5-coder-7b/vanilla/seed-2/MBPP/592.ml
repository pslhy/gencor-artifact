let rec sum_Of_product (n : int) : int = 
    let rec product_binomials (k : int) : int = 
        let rec factorial (x : int) : int = 
            if x = 0 then 1 else x * factorial (x - 1)
        in 
        (factorial n) / ((factorial k) * (factorial (n - k)))
    in
    let rec sum_recursive (k : int) : int = 
        if k > n then 0 
        else (product_binomials k * product_binomials (k + 1)) + sum_recursive (k + 1)
    in
    sum_recursive 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the product of consecutive binomial co-efficients. *)
