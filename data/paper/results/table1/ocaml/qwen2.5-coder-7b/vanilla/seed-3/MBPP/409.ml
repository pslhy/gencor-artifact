let rec min_product_tuple (list1 :  (int * int) list) : int = 
    let rec helper min (list : (int * int) list) : int = 
        match list with 
        | [] -> min 
        | (a, b) :: rest -> 
            let product = a * b in 
            if product < min then 
                helper product rest 
            else 
                helper min rest 
    in 
    helper max_int list1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the minimum product from the pairs of tuples within a given list. *)
