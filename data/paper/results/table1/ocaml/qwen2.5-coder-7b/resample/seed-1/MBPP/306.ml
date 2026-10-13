(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int = 
  if index >= n || k <= index then 
    0 
  else 
    let incl = 
      a.(k) + 
      let rec find_max以前的子序列 (i : int) (max_sum : int) : int = 
        if i < 0 || a.(i) >= a.(k) then 
          max_sum 
        else 
          find_max以前的子序列 (i - 1) (max(max_sum, max_sum以前的子序列 (i - 1) + a.(i))) 
      in 
      find_max以前的子序列 (index - 1) 0 
    in 
    let excl = max_sum_increasing_subseq a n index (k + 1) in 
    max incl excl

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:24: Illegal character (\187) *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int = 
  if index >= n || k <= index then 
    0 
  else 
    let incl = 
      List.nth a k + 
      let rec find_max以前的子序列 (i : int) (max_sum : int) : int = 
        if i < 0 || List.nth a i >= List.nth a k then 
          max_sum 
        else 
          find_max以前的子序列 (i - 1) (max(max_sum, find_max以前的子序列 (i - 1) + List.nth a i)) 
      in 
      find_max以前的子序列 (index - 1) 0 
    in 
    let excl = max_sum_increasing_subseq a n index (k + 1) in 
    max incl excl

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:24: Illegal character (\187) *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int = 
  if index >= n || k <= index then 
    0 
  else 
    let incl = 
      List.nth a k + 
      let rec find_max以前的子序列 (i : int) (max_sum : int) : int = 
        if i < 0 || a.(i) >= a.(k) then 
          max_sum 
        else 
          find_max以前的子序列 (i - 1) (max(max_sum, find_max以前的子序列 (i - 1) + a.(i))) 
      in 
      find_max以前的子序列 (index - 1) 0 
    in 
    let excl = max_sum_increasing_subseq a n index (k + 1) in 
    max incl excl

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:24: Illegal character (\187) *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int = 
  if index >= n || k <= index then 
    0 
  else 
    let incl = 
      a.(k) + 
      let rec find_max以前的子序列 (i : int) (max_sum : int) : int = 
        if i < 0 || a.(i) >= a.(k) then 
          max_sum 
        else 
          find_max以前的子序列 (i - 1) (max(max_sum, find_max以前的子序列 (i - 1) + a.(i))) 
      in 
      find_max以前的子序列 (index - 1) 0 
    in 
    let excl = max_sum_increasing_subseq a n index (k + 1) in 
    max incl excl

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:24: Illegal character (\187) *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int = 
  if index >= n || k <= index then 
    0 
  else 
    let incl = 
      List.nth a k + 
      let rec find_max以前的子序列 (i : int) (max_sum : int) : int = 
        if i < 0 || List.nth a i >= List.nth a k then 
          max_sum 
        else 
          find_max以前的子序列 (i - 1) (max(max_sum, find_max以前的子序列 (i - 1) + List.nth a i)) 
      in 
      find_max以前的子序列 (index - 1) 0 
    in 
    let excl = max_sum_increasing_subseq a n index (k + 1) in 
    max incl excl

