let rec unique_product (list_data : int list) : int = 
    let rec find_unique (lst : int list) (seen : int list) : int list = 
        match lst with
        | [] -> seen
        | x :: xs -> if List.mem x seen then find_unique xs seen else find_unique xs (x :: seen)
    in
    let rec product (lst : int list) : int = 
        match lst with
        | [] -> 1
        | x :: xs -> x * product xs
    in
    product (find_unique list_data [])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to calculate the product of the unique numbers in a given list. *)
