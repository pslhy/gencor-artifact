let rec swap_List (newList : int list) : int list =
    match newList with
    | [] -> []
    | [_] -> newList
    | head::tail ->
        let rec rev_rev (revTail : int list) (newHead : int) : int list =
            match revTail with
            | [] -> [newHead]
            | head::tail -> head::(rev_rev tail newHead)
        in 
        let newHead = List.hd (List.rev newList) in
        let newTail = List.tl (List.rev tail) in
        rev_rev newTail newHead


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to interchange the first and last element in a given list. *)
