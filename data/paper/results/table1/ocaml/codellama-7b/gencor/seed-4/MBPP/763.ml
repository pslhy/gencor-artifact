
let rec find_min_diff (arr : int list) (n : int) : int = 
    (* base case: if list with only one element *)
    let rec find_min_diff_single (arr : int list) (n : int) : int = 
        (* find the difference between adjacent elements *)
        match arr with
        | h::t ->
            let diff = abs (h - List.hd t) in
            if n = 1 then diff
            else find_min_diff_single t (n - 1)
        | [] -> -1

    (* find the minimum difference between any two elements *)
    (* compare adjacent elements and find the minimum *)
    (* if the difference is less than the smallest difference *)
    (* then update the smallest difference and move on *)
    (* if the difference is greater than the smallest difference *)
    (* then do not update and move on *)
    (* at the end, return the smallest difference *)
    (* O(n) time complexity *)
    in
    match arr with
    | h::t ->
        let first_diff = find_min_diff_single arr n in
        if first_diff = -1 then -1
        else find_min_diff_single t (n - 1)
    | [] -> -1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
