let rec max_sum (arr : int list) : int =
    match arr with
    | [] -> 0
    | [a] -> a
    | a :: b :: tl ->
        if a <= b then
            max (a + max_sum (b :: tl)) (max_sum (a :: tl))
        else
            max (b + max_sum (a :: tl)) (max_sum (a :: tl))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
