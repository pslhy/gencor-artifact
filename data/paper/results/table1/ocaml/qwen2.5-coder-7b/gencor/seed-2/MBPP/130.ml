
let rec max_occurrences (nums : int list) : int = 
    let count acc x = 
        if x = nums.(0) then acc + 1 else acc in
    let max_list lst =
        List.fold_left (fun a b -> if a > b then a else b) 0 lst in
    let rec helper lst max_num =
        match lst with
        | [] -> max_num
        | x::xs ->
            let new_max = max max_num (List.fold_left count 0 xs) in
            helper xs new_max in
    helper nums 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
