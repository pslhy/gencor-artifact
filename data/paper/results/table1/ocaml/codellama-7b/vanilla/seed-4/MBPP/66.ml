let rec pos_count (list : int list) : int = 
    match list with 
    | head :: tail -> 
        (match head with 
        | x when x > 0 -> 1 + pos_count tail 
        | _ -> pos_count tail)
    | _ -> 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of positive numbers in a list. *)
