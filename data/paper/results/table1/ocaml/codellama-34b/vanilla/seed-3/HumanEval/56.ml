let rec correct_bracketing (brackets : string) : bool =
  if String.length brackets = 0 then
    true
  else if String.get brackets 0 = '<' then
    match String.index_opt brackets '>' with
    | Some i when i = String.length brackets - 1 ->
      correct_bracketing (String.sub brackets 1 (i - 1))
    | _ -> false
  else
    false


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
