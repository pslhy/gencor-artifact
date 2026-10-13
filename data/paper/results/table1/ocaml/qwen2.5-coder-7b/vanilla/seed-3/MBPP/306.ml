let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int =  
  if index >= k || k > n then 
    max_int  
  else if index = n-1 then 
    max a.(index) a.(k)  
  else 
    max (a.(index) + max_sum_increasing_subseq a n (index + 1) k)  
         (max_sum_increasing_subseq a n (index + 1) k)  

let max_sum_subseq_with_k (arr : int list) (k : int) : int =  
  let n = List.length arr in  
  if n = 0 || k < 0 || k >= n then 
    invalid_arg "Invalid input"  
  else  
    max_sum_increasing_subseq (Array.of_list arr) n 0 k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
