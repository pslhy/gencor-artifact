let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list = 
    let rec merge_two (l1 : int list) (l2 : int list) : int list = 
        match l1, l2 with
        | [], _ -> l2
        | _, [] -> l1
        | x::xs, y::ys -> if x < y then x :: merge_two xs l2 else y :: merge_two l1 ys
    in
    merge_two (merge_two num1 num2) num3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
