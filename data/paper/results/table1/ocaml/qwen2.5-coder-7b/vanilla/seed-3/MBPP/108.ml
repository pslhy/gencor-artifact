let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list = 
    let rec merge a b = 
        match a, b with
        | [], _ -> b
        | _, [] -> a
        | x::xs, y::ys -> if x < y then x::merge xs b else y::merge a ys
    in
    merge (merge num1 num2) num3;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
