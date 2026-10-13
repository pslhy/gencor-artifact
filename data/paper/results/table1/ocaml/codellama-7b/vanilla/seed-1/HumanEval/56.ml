let rec correct_bracketing (brackets : string) : bool =
    let rec aux (stack : char list) (i : int) : bool * char list =
        if i >= String.length brackets then
            (stack = [], [])
        else
            match brackets.[i] with
            | '>' ->
                let (res, stack') = aux stack (i + 1) in
                (res, '>' :: stack')
            | _ ->
                let (res, stack') = aux (brackets.[i] :: stack) (i + 1) in
                (res, stack')
    in
    let (res, _), _ = aux [] 0 in
    res


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     brackets is a string of "<" and ">". *)
(*     return true if every opening bracket has a corresponding closing bracket. *)
(*     >>> correct_bracketing "<" *)
(*     false *)
(*     >>> correct_bracketing "<>" *)
(*     true *)
(*     >>> correct_bracketing "<<><>>" *)
(*     true *)
(*     >>> correct_bracketing "><<>" *)
(*     false *)
