let rec correct_bracketing (brackets : string) : bool =
  let rec helper (brackets : string) (count : int) : bool =
    match brackets with
    | "" -> count = 0
    | _ when count < 0 -> false
    | s ->
        let new_count = if String.get s 0 = '(' then count + 1 else count - 1 in
        helper (String.sub s 1 (String.length s - 1)) new_count
  in
  helper brackets 0


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
