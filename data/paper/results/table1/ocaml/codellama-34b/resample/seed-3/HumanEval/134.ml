(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Create a function that returns true if the last character *)
(*     of a given string is an alphabetical character and is not *)
(*     a part of a word, and false otherwise. *)
(*     Note: "word" is a group of characters separated by space. *)
(*     Examples: *)
(*     >>> check_if_last_char_is_a_letter "apple pie" *)
(*     false *)
(*     >>> check_if_last_char_is_a_letter "apple pi e" *)
(*     true *)
(*     >>> check_if_last_char_is_a_letter "apple pi e " *)
(*     false *)
(*     >>> check_if_last_char_is_a_letter "" *)
(*     false *)
let rec check_if_last_char_is_a_letter (txt : string) : bool =
  if String.length txt <= 1 then
    false
  else if Char.is_alphabetical txt.[String.length txt - 1] then
    true
  else
    check_if_last_char_is_a_letter (String.sub txt 0 (String.length txt - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Char.is_alphabetical" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_if_last_char_is_a_letter (txt : string) : bool =
  if String.length txt <= 1 then
    false
  else if 
    let c = txt.[String.length txt - 1] in
    c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z'
  then
    true
  else
    check_if_last_char_is_a_letter (String.sub txt 0 (String.length txt - 1))
``
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_if_last_char_is_a_letter (txt : string) : bool =
  if String.length txt <= 1 then
    false
  else if 
    let c = txt.[String.length txt - 1] in
    c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z'
  then
    true
  else
    check_if_last_char_is_a_letter (String.sub txt 0 (String.length txt - 1))

