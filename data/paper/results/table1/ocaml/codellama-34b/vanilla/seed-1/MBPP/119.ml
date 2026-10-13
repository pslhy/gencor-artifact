let rec search (arr : int list) : int =
    let rec aux (arr : int list) (count : int) : int * int =
        match arr with
        | [] -> (None, 0)
        | head :: tail ->
            if count = 1 then
                (Some head, 1)
            else
                let (_, c) = aux tail (count + 1) in
                if c = 0 then
                    (Some head, 1)
                else
                    (None, 0)
    in
    match aux arr 0 with
    | (Some head, _) -> head
    | (None, _) -> raise Not_found


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the element that appears only once in a sorted list. *)
