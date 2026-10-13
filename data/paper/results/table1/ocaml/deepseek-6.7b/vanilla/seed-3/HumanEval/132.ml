let rec is_nested (string : string) : bool =
  let rec helper (rem_string : string) (nest_level : int) : bool =
    if rem_string = "" then nest_level > 0
    else if String.get rem_string 0 = '[' then
      helper (String.sub rem_string 1 (String.length rem_string -1)) (nest_level+1)
    else if String.get rem_string 0 = ']' then
      if nest_level > 0 then helper (String.sub rem_string 1 (String.length rem_string -1)) (nest_level-1)
      else false
    else helper (String.sub rem_string 1 (String.length rem_string -1)) nest_level
  in
  helper string 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function that takes a string as input which contains only square brackets. *)
(*     The function should return true if and only if there is a valid subsequence of brackets *)
(*     where at least one bracket in the subsequence is nested. *)
(*     >>> is_nested "[[]]" *)
(*     true *)
(*     >>> is_nested "[]]]]]]][[[[[]" *)
(*     false *)
(*     >>> is_nested "[][]" *)
(*     false *)
(*     >>> is_nested "[]" *)
(*     false *)
(*     >>> is_nested "[[][]]" *)
(*     true *)
(*     >>> is_nested "[[]][[" *)
(*     true *)
