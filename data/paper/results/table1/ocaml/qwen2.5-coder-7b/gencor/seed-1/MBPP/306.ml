
let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int = 
  if index >= n || k <= index then 
    0 
  else 
    let incl = 
      a.(k) + 
      let rec find_max prev j = 
        if j >= n then 
          0 
        else if a.(j) > prev && a.(j) < a.(k) then 
          max (find_max prev (j + 1)) (a.(j) + max_sum_increasing_subseq a n index k) 
        else 
          find_max prev (j + 1) 
      in 
      find_max a.(index) (index + 1) 
    in 
    let excl = max_sum_increasing_subseq a n index (k + 1) in 
    max incl excl

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
