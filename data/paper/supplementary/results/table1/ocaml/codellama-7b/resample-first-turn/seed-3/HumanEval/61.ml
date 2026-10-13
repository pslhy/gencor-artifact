let rec correct_bracketing (brackets : string) : bool =
  let n_open = ref 0 in
  for i = 0 to String.length brackets - 1 do
    if brackets.[i] = '(' then
      n_open := !n_open + 1;
    else
      n_open := !n_open - 1;
  done;
  !n_open = 0


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
