let rec correct_bracketing (brackets : string) : bool =
    match brackets with
    | "" -> true
    | _ ->
        let rec find_match (idx : int) : int option =
            if idx >= String.length brackets then
                None
            else if brackets.[idx] = ')' then
                find_match (idx + 1)
            else if brackets.[idx] = '(' then
                find_match (idx + 1)
            else
                None
        in
        find_match 0 |> Option.is_some


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     brackets is a string of "(" and ")". *)
(*     return true if every opening bracket has a corresponding closing bracket. *)
(*     >>> correct_bracketing "(" *)
(*     false *)
(*     >>> correct_bracketing "()" *)
(*     true *)
(*     >>> correct_bracketing "(()())" *)
(*     true *)
(*     >>> correct_bracketing ")(()" *)
(*     false *)
