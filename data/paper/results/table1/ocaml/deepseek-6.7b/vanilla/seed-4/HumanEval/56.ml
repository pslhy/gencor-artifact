let rec correct_bracketing (brackets : string) : bool =
  let rec aux xs open_count =
    match xs with
    | [] -> open_count = 0
    | (x :: xs) ->
        if x = '<' then aux xs (open_count + 1)
        else if x = '>' then
          if open_count > 0 then aux xs (open_count - 1)
          else false
        else aux xs open_count
  in
  aux (List.of_seq (String.to_seq brackets)) 0


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
