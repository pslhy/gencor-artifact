let rec min_product_tuple (list1 :  (int * int) list) : int =
    match list1 with 
    |[] -> raise (Failure "Empty list") 
    |(x, y) :: tl -> 
        let current_prod = x * y in
        let rest_prod = min_product_tuple tl in
        if current_prod < rest_prod then current_prod else rest_prod


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the minimum product from the pairs of tuples within a given list. *)
