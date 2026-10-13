let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int =
  if index = -1 then
    (* base case: maximum sum is the first element *)
    a.(0)
  else if k = index + 1 then
    (* base case: maximum sum is the kth element *)
    a.(k)
  else
    (* recursive case: maximum sum is maximum of including kth element
                       and excluding kth element *)
    max (a.(k) + max_sum_increasing_subseq a n (index - 1) k)
      (max_sum_increasing_subseq a n (index - 1) (k + 1))

let _ =
  let a = [|1; 2; 3; 4; 5; 6; 7; 8|] in
  let n = Array.length a in
  (* find the maximum sum of increasing subsequence including kth element *)
  let k = 5 in
  let index = max_sum_increasing_subseq a n (n - 2) k in
  Printf.printf "The maximum sum of increasing subsequence including the %dth element is: %d\n" k (a.(index) + a.(k))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
