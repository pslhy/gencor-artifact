let rec big_sum (nums : int list) : int = 
    let rec find_min_max (lst : int list) (min_val : int) (max_val : int) : int * int =
        match lst with
        | [] -> (min_val, max_val)
        | x :: xs -> 
            let new_min = min x min_val in
            let new_max = max x max_val in
            find_min_max xs new_min new_max
    in
    let (min_val, max_val) = find_min_max nums max_int min_int in
    min_val + max_val


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the largest and smallest value in a given list. *)
