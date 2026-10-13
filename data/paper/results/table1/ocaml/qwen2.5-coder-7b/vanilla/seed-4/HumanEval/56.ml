let rec correct_bracketing (brackets : string) : bool = 
  let rec count_brackets (s : string) (open_count : int) : int =
    if String.length s = 0 then
      open_count
    else
      match s.[0] with
      | '<' -> count_brackets (String.sub s 1 (String.length s - 1)) (open_count + 1)
      | '>' -> if open_count > 0 then count_brackets (String.sub s 1 (String.length s - 1)) (open_count - 1) else -1
      | _ -> -1
  in
  let result = count_brackets brackets 0 in
  result = 0


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
