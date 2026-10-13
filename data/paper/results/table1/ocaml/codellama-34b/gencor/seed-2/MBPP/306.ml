
let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int =
    let subarray = Array.sub a index (k - index + 1) in
    let sublist = Array.to_list (Array.sub a 0 index) @ [a.(k)] in
    List.fold_left (fun acc x -> acc + x) 0 (List.mapi (fun i x -> x + if i < index then min (subarray.(i)) (sublist.(i))) subarray)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
