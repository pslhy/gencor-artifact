let rec correct_bracketing (brackets : string) : bool = 
  let rec check_balance (stack : char list) (brackets : string) : bool =
    match (stack, brackets) with
    | ([], "") -> true
    | ([], _) -> false
    | (_, "") -> false
    | (h::t, '(' :: t') -> check_balance (h :: t) t'
    | ('(' :: t, ')') -> check_balance t t
    | (_, '(' :: t') -> check_balance t' t'
    | (_, ')') -> false
  in
  check_balance [] brackets


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
