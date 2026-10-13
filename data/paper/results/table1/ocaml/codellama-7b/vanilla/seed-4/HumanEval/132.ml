let rec is_nested (string : string) : bool =
  let len = String.length string in
  let rec validate_nesting i =
    if i >= len then true
    else if string.[i] = '[' then false
    else if string.[i] = ']' then
      if i + 1 >= len then false
      else if string.[i + 1] = ']' then validate_nesting (i + 2)
      else true
    else validate_nesting (i + 1)
  in
  if len < 2 then false
  else if string.[0] = '[' && string.[len - 1] = ']' then validate_nesting 1
  else false

let is_nested (string : string) : bool =
  let trimmed_string = String.sub string 1 (String.length string - 2) in
  is_nested trimmed_string


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
