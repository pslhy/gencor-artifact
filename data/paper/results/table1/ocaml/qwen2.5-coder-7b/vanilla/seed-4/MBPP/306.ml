let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int = 
  if index >= n || k < n then
    -1
  else
    let max_subseq sum i =
      if i >= n then sum
      else if a.(i) > a.(index) then
        max (max_subseq sum i + a.(i)) (max_subseq sum (i + 1))
      else
        max_subseq sum (i + 1)
    in
    max_subseq a.(k) (k + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
