let rec reverse_Array_Upto_K (input : int list) (k : int) : int list = 
    let rec helper lst k acc = 
        match (k, lst) with
        | (0, _) -> List.rev acc
        | (_, []) -> List.rev acc
        | (_, x::xs) -> helper xs (k - 1) (x :: acc)
    in
    helper input k []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
