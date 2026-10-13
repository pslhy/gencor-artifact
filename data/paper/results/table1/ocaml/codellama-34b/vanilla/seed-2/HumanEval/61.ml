let rec correct_bracketing (brackets : string) : bool =
    match brackets with
    | "" -> true
    | _ ->
        let opening = ['('] in
        let closing = [')'] in
        let counts = List.map (fun c -> if c in opening then 1 else -1) brackets in
        let count = List.fold_left (+) 0 counts in
        count = 0


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
