(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Checks if given string is a palindrome *)
(*     >>> is_palindrome "" *)
(*     true *)
(*     >>> is_palindrome "aba" *)
(*     true *)
(*     >>> is_palindrome "aaaaa" *)
(*     true *)
(*     >>> is_palindrome "zbcd" *)
(*     false *)
let rec is_palindrome (text : string) : bool =
  if text = ""
  then true
  else if Char.lowercase text.[0] = Char.lowercase text.[String.length text - 1]
  then is_palindrome (String.sub text 1 (String.length text - 2))
  else false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_palindrome (text : string) : bool =
  if text = ""
  then true
  else if (Char.lowercase text.[0]) = (Char.lowercase text.[String.length text - 1])
  then is_palindrome (String.sub text 1 (String.length text - 2))
  else false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:12: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_palindrome (text : string) : bool =
  if text = ""
  then true
  else if String.get text 0 = String.unsafe_get text (String.length text - 1)
  then is_palindrome (String.sub text 1 (String.length text - 2))
  else false

