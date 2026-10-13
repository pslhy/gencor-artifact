let rec correct_bracketing (brackets : string) : bool = 
  let rec count_blance (s : string) (balance : int) : int =
    if s = "" then balance
    else
      match s.[0] with
      | '(' -> count_blance (String.sub s 1 (String.length s - 1)) (balance + 1)
      | ')' -> count_blance (String.sub s 1 (String.length s - 1)) (balance - 1)
      | _ -> balance
  in count_blance brackets 0 = 0


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
