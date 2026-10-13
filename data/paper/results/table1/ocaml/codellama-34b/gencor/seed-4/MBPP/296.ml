
let rec get_Inv_Count (arr : int list) : int = 
    (* base case: ignore empty and single-element arrays *)
    match arr with 
    | [] | [_] -> 0 (* exit recursion and return 0 inversions *)
    | x :: rest ->
        (* recursive case: split the array into two subarrays
         left and right, then join the two counts 
         of inversions from both subarrays *)
        let (left, right) = (List.rev rest) in
        let inv_left = get_Inv_Count left in
        let inv_right = get_Inv_Count right in
        let inv_merged = get_Inv_Count (List.rev_append left right) in
        inv_left + inv_right + inv_merged

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
