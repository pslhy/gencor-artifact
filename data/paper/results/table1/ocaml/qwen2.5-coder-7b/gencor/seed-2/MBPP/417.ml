
let rec group_tuples (input : string list list) : string list list = 
    let rec find_common (these : string list) (rest : string list list) : string list =
        match these with
        | [] -> these
        | x :: xs ->
            match rest with
            | [] -> these
            | y :: ys ->
                if List.for_all (fun lst -> List.mem x lst) (y :: ys) then
                    find_common (x :: xs) ys
                else
                    find_common xs ys
    in
    match input with
    | [] -> []
    | x :: xs ->
        let common = find_common x xs in
        common :: group_tuples xs

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
