(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int =
    if index = n - 1 then a.(index)
    else if k = n then a.(index) + max_sum_increasing_subseq a n (index + 1) k
    else if a.(index) < a.(k) then a.(index) + max_sum_increasing_subseq a n (index + 1) k
    else max_sum_increasing_subseq a n (index + 1) k

