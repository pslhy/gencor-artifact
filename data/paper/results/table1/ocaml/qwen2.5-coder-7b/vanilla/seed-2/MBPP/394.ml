let rec check_distinct (test_tup : int list) : bool = 
    let rec find_element (elem : int) (lst : int list) : bool =
        match lst with
            | [] -> false
            | x :: xs -> 
                if x = elem then true 
                else find_element elem xs
    in
    match test_tup with
        | [] -> true
        | x :: xs -> 
            if find_element x xs then false 
            else check_distinct xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if given list contains no duplicates. *)
