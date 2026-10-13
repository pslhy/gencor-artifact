let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int =
  if index >= n || k > n then
    List.hd a
  else
    let head = List.hd a in
    let tail = max_sum_increasing_subseq (List.tl a) n index k in
    if head >= tail then
      head + max_sum_increasing_subseq (List.tl a) n (index + 1) k
    else
      tail

let rec max_sum_increasing_subseq_naive (a : int list) (n : int) (k : int) : int =
  if n = 0 || k = 0 then
    0
  else
    max (a.(n-1) + max_sum_increasing_subseq_naive a (n-1) (k-1)) (max_sum_increasing_subseq_naive a (n-1) k)

(* Uses memoization to avoid repetitive calculations *)
let max_sum_increasing_subseq_memo (a : int list) (n : int) (k : int) : int =
  let memo = Array.init (n+1) (fun _ -> Array.make (k+1) (-1)) in
  let rec aux (i : int) (k : int) (memo : int array array) : int =
    if k = 0 || i >= n then
      max_sum_increasing_subseq_naive a n k
    else if memo.(i).(k) <> -1 then
      memo.(i).(k)
    else
      let sum_including_i = a.(i) + max (aux (i-1) k memo) (aux (i-1) (k-1) memo) in
      memo.(i).(k) <- sum_including_i;
      sum_including_i
  in
  aux n k memo


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
