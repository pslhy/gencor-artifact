
let rec correct_bracketing (brackets : string) : bool = 
  let rec check_brackets count = function
    | [] -> count = 0
    | '(' :: rest -> check_brackets (count + 1) rest
    | ')' :: rest -> if count = 0 then false else check_brackets (count - 1) rest
  in
  check_brackets 0 (List.of_seq (String.to_seq brackets))

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
