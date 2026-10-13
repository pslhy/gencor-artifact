let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int = 
  if k <= index || k > n - 1 then
    a.(index)
  else
    let include_k = a.(index) + (
      List.fold_left (fun max_sum x -> 
        if x > a.(index) then
          max max_sum (max_sum_increasing_subseq a n k (List.index (fun y -> y = x) (List.rev a) - 1))
        else
          max_sum
      ) 0 a
    ) in
    let exclude_k = max_sum_increasing_subseq a n index (k + 1) in
    max include_k exclude_k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
