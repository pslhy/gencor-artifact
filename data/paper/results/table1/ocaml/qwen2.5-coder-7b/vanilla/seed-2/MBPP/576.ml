let rec is_Sub_Array (a : int list) (b : int list) : bool = 
    let rec is_Sub_Array' (alist : int list) (blist : int list) : bool = 
        match (alist, blist) with
        | ([], _) -> true
        | (_, []) -> false
        | (h1::t1, h2::t2) -> 
            (h1 = h2 && is_Sub_Array' t1 t2) || is_Sub_Array' a t2
    in is_Sub_Array' a b


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether a list is sublist of another or not. *)
