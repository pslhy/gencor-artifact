let rec group_tuples (input : string list list) : string list list =
    match input with
    | ([] as xs) :: xss -> (List.map (fun ls -> List.tl (ls)) xss) @ xs
    | _ -> []

let rec find_common (l1: string list) (l2: string list): string list =
    match (l1, l2) with
    | ([], _) -> []
    | (_, []) -> []
    | (x::xs, y::ys) -> if x = y then x :: find_common xs ys else find_common xs ys

let rec common_elem (input : string list list) : string list =
    let tuples = group_tuples input in
    match tuples with
    | [] -> []
    | x::[] -> x 
    | _ -> find_common (List.hd tuples) (common_elem tuples)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
