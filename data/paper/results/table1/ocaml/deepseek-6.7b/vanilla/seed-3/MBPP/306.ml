let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int =
  if index < n + 1 then
    let upper_bound = List.nth a index in
    let rec aux (upper_bound : int) (i : int) (max : int) : int  =
      if i < n then 
        let new_max = 
          if List.nth a i < upper_bound && (max < (upper_bound + List.nth a i)) then 
            upper_bound + List.nth a i 
          else 
            max 
        in aux upper_bound (i + 1) new_max 
      else
        max
    in max (aux upper_bound index 0) (max_sum_increasing_subseq a n (index + 1) k)
  else
    if k >= n then
      0
    else 
      (List.nth a k) + (max_sum_increasing_subseq a n k (k + 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
