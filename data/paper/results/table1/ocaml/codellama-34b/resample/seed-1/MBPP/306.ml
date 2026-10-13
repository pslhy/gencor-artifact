(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i . *)
let rec max_sum_increasing_subseq (a : int list) (n : int) (index : int) (k : int) : int =
    let rec aux j sum max =
        if j > n then max
        else if a.(j) >= a.(index) then
            let new_sum = sum + a.(j) in
            let new_max = if new_sum > max then new_sum else max in
            aux (j + 1) new_sum new_max
    in
    aux (index + 1) a.(index) 0

