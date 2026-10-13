let rec max_product (arr : int list) : int = 
    let rec max_product_from_here idx max_so_far product =
        if idx >= List.length arr then max_so_far
        else
            let current = List.nth arr idx in
            let new_product = 
                if current > 1 then product * current
                else product
            in
            max_product_from_here (idx + 1) (max max_so_far new_product) new_product
    in
    if List.length arr = 0 then 0
    else max_product_from_here 0 0 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
