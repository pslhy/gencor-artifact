let rec is_Monotonic (a : int list) : bool =
    match a with
    | [] | [_] -> true
    | hd :: (nx :: tl) ->
        let (comp, _) = compare hd nx in
        match tl with
        | [] -> true
        | _ -> comp = 0 || is_Monotonic (nx :: tl)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list is monotonic or not. *)
