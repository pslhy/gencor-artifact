let rec correct_bracketing (brackets : string) : bool =
  let openings = ref [] in
  let closings = ref [] in
  for i = 0 to String.length brackets - 1 do
    if String.unsafe_get brackets i = '<' then
      openings := !openings ^ "<"
    else if String.unsafe_get brackets i = '>' then
      closings := !closings ^ ">"
    else
      ()
  done;
  List.for_all2 (fun e1 e2 -> e1 = e2) !openings !closings


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
