let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int = 
    let rec find_max_sum subseq_sum i =
        if i <= index then subseq_sum else
        let c = List.nth a i in
        if c > List.nth a (i - 1) then
            max subseq_sum (find_max_sum (subseq_sum + c) (i - 1))
        else
            find_max_sum subseq_sum (i - 1)
    in
    let k_value = List.nth a k in
    max (find_max_sum k_value k) (find_max_sum 0 (min k n - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
