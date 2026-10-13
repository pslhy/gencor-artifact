let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int =
  if index = n || a.[index] <= a.[k - 1] then
    if index = k then a.[index]
    else max_sum_increasing_subseq a n index (k + 1)
  else
    let prev = max_sum_increasing_subseq a n (index + 1) k in
    let curr = max_sum_increasing_subseq a n (index + 1) (k + 1) in
    max prev curr

let rec find_max_sum_increasing_subseq (a : int list) (n : int) (k : int) : int =
  max_sum_increasing_subseq a n 0 k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
