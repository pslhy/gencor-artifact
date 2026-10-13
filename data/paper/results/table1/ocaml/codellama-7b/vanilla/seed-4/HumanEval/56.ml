let rec correct_bracketing (brackets : string) : bool =
  let len = String.length brackets in
  let rec validate_bracket i =
    if i >= len then true
    else if brackets.[i] = '<' then
      (* Expect a closing bracket *)
      match validate_bracket (i + 1) with
      | true -> validate_bracket (i + 2)
      | false -> false
    else (* character is not '<'*)
      validate_bracket (i + 1)
  in
  validate_bracket 0


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
