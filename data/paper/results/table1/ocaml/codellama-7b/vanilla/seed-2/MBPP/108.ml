let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
    match num1, num2, num3 with
    | (x::_, []), _, [] -> x::[]
    | _, (y::_), []    -> y::[]
    | [], _, (z::_)    -> z::[]
    | (x::xs)          ->
        match ys with
        | (z::zs) when z < x -> x :: merge_sorted_list zs num2 num3
        | _ -> ys @ merge_sorted_list num1 num2 num3
    | (y::ys)          ->
        match num1 with
        | (x::xs) when x < y -> y::merge_sorted_list xs num2 num3
        | _ -> num1 @ merge_sorted_list num2 num3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
