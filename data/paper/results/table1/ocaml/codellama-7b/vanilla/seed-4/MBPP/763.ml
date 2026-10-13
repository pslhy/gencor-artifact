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
    match arr with
    | h::t ->
        let min_diff = find_min_diff_single t (n - 1) in
        let current_diff = abs (h - List.hd t) in
        if min_diff < 0 || current_diff < min_diff then current_diff
        else min_diff
    | [] -> -1

(* test cases *)
assert(find_min_diff [1; 2; 3; 4; 5; 6] = 1) ;
assert(find_min_diff [1; 2; 3; 4; 5; 6; 7] = 1) ;
assert(find_min_diff [1; 2; 3; 4; 5; 6; 7; 8] = 1) ;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
