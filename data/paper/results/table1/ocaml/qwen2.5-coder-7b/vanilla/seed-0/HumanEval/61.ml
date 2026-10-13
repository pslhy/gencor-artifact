let rec correct_bracketing (brackets : string) : bool = 
  let rec check_brackets balance idx =
    if idx = String.length brackets then
      balance = 0
    else
      match brackets.[idx] with
      | '(' -> check_brackets (balance + 1) (idx + 1)
      | ')' -> if balance = 0 then false else check_brackets (balance - 1) (idx + 1)
      | _ -> false
  in
  check_brackets 0 0


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
