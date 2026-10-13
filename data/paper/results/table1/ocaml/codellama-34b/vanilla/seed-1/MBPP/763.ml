let rec find_min_diff (arr : int list) (n : int) : int =
    let rec aux min_diff (sorted_arr : int list) : int * int =
        match sorted_arr with
        | [] -> (min_diff, -1)
        | hd :: tl ->
            let (min_diff', index) = aux min_diff tl in
            if (abs (hd - tl)) < min_diff' then (abs (hd - tl), hd) else (min_diff', index)
    in
    aux (arr.(n-1) - arr.(0)) (Array.sort compare arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
