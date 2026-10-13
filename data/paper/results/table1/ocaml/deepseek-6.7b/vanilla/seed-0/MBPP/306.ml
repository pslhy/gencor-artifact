let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int =
    if index = n then a.(!k)
    else if index > n then 0
    else
        max
            (a.(!index) + max_sum_increasing_subseq a n (!index + 1) k)
            (max_sum_increasing_subseq a (!index - 1) (!index + 1) k)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
