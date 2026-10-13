let rec all_unique (test_list : int list) : bool = 
    let rec find_element (elem : int) (lst : int list) : bool =
        match lst with
            | [] -> false
            | x :: xs -> if x = elem then true else find_element elem xs
    in 
    match test_list with
        | [] | [_] -> true
        | x :: xs -> if find_element x xs then false else all_unique xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if the elements of a given list are unique or not. *)
