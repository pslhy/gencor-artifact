let rec min_product_tuple (list1 :  (int * int) list) : int =
    let rec aux min_product (list2 : (int * int) list)=
        match list2 with
        | [] -> min_product
        | (a,b)::t -> if min_product < (a * b) then (min_product, a, b) else (aux min_product t)
    match list1 with
    | [] -> raise Not_found
    | (a,b)::t -> (aux (a * b) t), a, b) 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the minimum product from the pairs of tuples within a given list. *)
