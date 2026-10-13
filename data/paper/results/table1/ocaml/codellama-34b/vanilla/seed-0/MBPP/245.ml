let rec max_sum (arr : int list) : int =
    let rec max_sum_rec (arr : int list) (i : int) : int =
        if i >= (List.length arr) then
            0
        else if i = 0 then
            arr.(i) + max_sum_rec (arr) (i + 1)
        else if arr.(i) <= arr.(i + 1) then
            arr.(i) + max_sum_rec (arr) (i + 1)
        else
            max (arr.(i) + max_sum_rec (arr) (i + 1))
                 (arr.(i + 1) + max_sum_rec (arr) (i + 2))
    in
    max_sum_rec arr 0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
