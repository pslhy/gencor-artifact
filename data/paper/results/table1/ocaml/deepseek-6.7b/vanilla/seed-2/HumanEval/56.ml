let rec correct_bracketing (brackets : string) : bool =
  let rec check_brackets (lst : char list) (open_brackets : int) : bool =
    match lst with
    | [] -> open_brackets = 0
    | h::t -> 
        if h = '<' then
          check_brackets t (open_brackets + 1)
        else if h = '>' then
          if open_brackets > 0 then
            check_brackets t (open_brackets - 1)
          else
            false
        else
          check_brackets t open_brackets
  in
  check_brackets (List.rev (String.to_seq brackets |> List.of_seq)) 0


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
