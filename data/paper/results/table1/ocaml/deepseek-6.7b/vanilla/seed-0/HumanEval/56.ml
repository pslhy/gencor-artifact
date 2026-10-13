let rec correct_bracketing (brackets : string) : bool =
    let rec check_brackets (chars : string) (open_brackets : int) : bool =
        match chars with
        | "" -> open_brackets = 0
        | _::rest when chars.[0] = '<' -> check_brackets rest (open_brackets + 1)
        | _::rest when chars.[0] = '>' -> open_brackets > 0 && check_brackets rest (open_brackets - 1)
        | _::rest -> check_brackets rest open_brackets
    in check_brackets (String.to_list brackets) 0


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
