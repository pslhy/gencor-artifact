let rec max_Abs_Diff (arr : int list) : int = 
    let rec find_min_max (lst : int list) (min_val : int) (max_val : int) : int * int =
        match lst with
        | [] -> (min_val, max_val)
        | x :: xs -> 
            let new_min = min x min_val in
            let new_max = max x max_val in
            find_min_max xs new_min new_max
    in
    let (min_val, max_val) = find_min_max arr Int.max_int Int.min_int in
    abs (max_val - min_val)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
