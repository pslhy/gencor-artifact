let rec neg_nos (list1 : int list) : int list =
    match list1 with
    | [] -> []
    | x :: xs -> 
        if x < 0 then x :: neg_nos xs
        else neg_nos xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to return the negative numbers in a list. *)
