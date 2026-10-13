let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int =
  if n = -1 || n = index then 0
  else if a.(n) < a.(k) then a.(n)
  else if a.(n) > a.(k) then max_sum_increasing_subseq a (n-1) index k
  else max_sum_increasing_subseq a (n-1) (index+1) k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
