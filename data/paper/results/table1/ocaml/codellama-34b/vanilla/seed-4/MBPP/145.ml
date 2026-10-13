let rec max_Abs_Diff (arr : int list) : int = 
    (* base case: if list with only one element *)
    let rec sort (arr : int list) : int list = 
        (* base case: list with one element *)
        match arr with 
        | [] -> []
        | x::xs -> let smaller = sort xs in x :: smaller
        
    let rec diff (arr : int list) : int list =
        (* base case: list with one element *)
        match arr with
        | [x] -> x
        | x::xs -> x - (diff xs)
    sort arr |> diff |> List.map Abs |> List.max 



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
