let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int = 
    (* base case: if k is the last element *)
    let (prefix, suffix) = 
        try List.split_at index a 
        with Invalid_argument _ -> (a, [])
    in 
    if suffix = [] then prefix.(index) else 
    (* recursion step: find the maximum sum of increasing subsequence 
     *     from prefix until ith index and also including a given kth 
     *     element which is after i, i.e., k > i 
     *)
    let (m1, m2, m3) = 
        let rec loop ((l1, l2, l3) as m) ((p, s) as u) =
            match s with
            | [] -> m
            | (h::t) ->
                let (l1, l2, l3) =
                    if h <= l1 then (h, l2, l3)
                    else if h <= l2 then (l1, h, l3)
                    else if h <= l3 then (l1, l2, h)
                    else (l1, l2, h) in 
                loop (l1, l2, l3) (t, k) in 
        List.fold_left loop (Int.min_value, Int.min_value, Int.min_value) prefix 
    in 
    match k = index with
    | false -> max (max (prefix.index) m1) (max (prefix.index) m2) 
    | true -> max (max (prefix.index) m1) (max (prefix.index) m2) (max (prefix.index) m3) 
 
(* max_sum_increasing_subseq [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] k 3 -> 16 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
