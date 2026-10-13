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
  let len = String.length txt in
  if len = 0 then false
  else if txt.[len - 1] |> Char.code |> (<= 97 && >=65) && (<= 122 || >=97) then false
  else if len = 1 then false
  else if txt.[len - 2] = ' ' then true
  else check_if_last_char_is_a_letter (String.sub txt 0 (len - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:45: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_if_last_char_is_a_letter (txt : string) : bool =
  let len = String.length txt in
  if len = 0 then false
  else if txt.[len - 1] |> Char.code |> (<= 97 && >=65) && (<= 122 || >=97) then false
  else if len = 1 then false
  else if txt.[len - 2] = ' ' then true
  else check_if_last_char_is_a_letter (String.sub txt 0 (len - 1))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:45: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_if_last_char_is_a_letter (txt : string) : bool =
  let len = String.length txt in
  if len = 0 then false
  else if txt.[len - 1] |> Char.code |> (<= 97 && >=65) && (<= 122 || >=97) then false
  else if len = 1 then false
  else if txt.[len - 2] = ' ' then true
  else check_if_last_char_is_a_letter (String.sub txt 0 (len - 1))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:45: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_if_last_char_is_a_letter (txt : string) : bool =
  let len = String.length txt in
  if len = 0 then false
  else if (txt.[len - 1] |> Char.code |> fun c -> c >= 65 && c <= 90 || c >= 97 && c <= 122) then false
  else if len = 1 then false
  else if txt.[len - 2] = ' ' then true
  else check_if_last_char_is_a_letter (String.sub txt 0 (len - 1))

