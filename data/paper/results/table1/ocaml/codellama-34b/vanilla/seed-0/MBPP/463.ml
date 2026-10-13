let rec max_subarray_product (arr : int list) : int =
    match arr with
    | [] -> 1
    | h :: t -> 
        let (a, b) = max_subarray_product_aux h max_int 0 1 t
        in if a > b then a else b
    and max_subarray_product_aux (a : int) (b : int) (c : int) : int =
        match c with
        | [] -> if a > b then a else b
        | h :: t ->
            let x = if a > h then a * h else h
            let y = if b < h then b else b * h
            in max_subarray_product_aux x y t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
