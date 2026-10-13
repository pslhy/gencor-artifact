let rec all_unique (test_list : int list) : bool = 
    let rec helper seen_list remaining_list =
        match remaining_list with
        | [] -> true
        | x::xs -> if List.mem x seen_list then false else helper (x::seen_list) xs
    in
    helper [] test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if the elements of a given list are unique or not. *)
