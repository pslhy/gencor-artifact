(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec correct_bracketing (brackets : string) : bool =
    match brackets with
    | [] | [_] -> false
    | hd :: tl ->
        if hd = '<' then
            if tl = [] || tl = "<>" then
                true
            else
                let sub_result = correct_bracketing tl in
                sub_result && if tl = ">" then true else false
        else
            if tl = [] || tl = ">" then
                false
            else
                let sub_result = correct_bracketing tl in
                not sub_result && if hd = ">" then true else false

