let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int =
  match n with
  | 0 -> 0
  | n ->
    let sum = max (List.nth a (n - 1)) (max_sum_increasing_subseq a (n - 1) index k) in
    match index = n with
    | true -> sum
    | false -> max sum (a.(n) + max_sum_increasing_subseq a (n - 1) (k - 1) k)

let rec max_sum_increasing_subseq_prefix (a : int list) (i : int) (k : int) : int =
  match i with
  | 0 -> 0
  | i ->
    let sum = max (List.nth a (i - 1)) (max_sum_increasing_subseq_prefix a (i - 1) k) in
    match k > i with
    | true -> sum
    | false -> max sum (a.(i) + max_sum_increasing_subseq_prefix a (i - 1) k)

let max_sum_increasing_subseqs (a : int list) (k : int) : int =
  let n = List.length a in
  max_sum_increasing_subseq a n (n - 1) k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
