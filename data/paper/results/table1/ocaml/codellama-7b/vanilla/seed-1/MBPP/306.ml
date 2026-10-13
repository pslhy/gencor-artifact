let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int =
match index < n with
| false -> 0
| true ->
  let current_sum = max_sum_increasing_subseq a n (index + 1) k in
  let current_sum_including_k = max (current_sum) (a.(index) + max_sum_increasing_subseq a (n - (index + 1)) (index + 1) k) in
  current_sum_including_k

let rec max_sum_increasing_subseq_with_index (a : int list) (n : int) (index : int) (k : int) : int * int =
match index < n with
| false -> (0, -1)
| true ->
  let current_sum, current_index = max_sum_increasing_subseq_with_index a n (index + 1) k in
  let current_sum_including_k, current_index_including_k =
    if k > index then (a.(index) + max_sum_increasing_subseq_with_index a (n - (index + 1)) (index + 1) k) else (current_sum, current_index)
  in
  (max current_sum_including_k current_sum, max current_index_including_k current_index)

let () =
  let input = read_line() |> explode |> List.map int_of_string in
  let n = List.length input in
  let k = read_int () in
  let max_sum, index = max_sum_increasing_subseq_with_index input n 0 k in
  Printf.printf "%d %d\n" max_sum index


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
