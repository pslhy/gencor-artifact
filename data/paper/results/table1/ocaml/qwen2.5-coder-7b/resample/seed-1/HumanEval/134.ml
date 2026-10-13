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
  if len = 0 then
    false
  else if len = 1 then
    Char.is_alpha txt.[0]
  else
    match txt.[len - 1], txt.[len - 2] with
    | c, ' ' when Char.is_alpha c -> true
    | _ -> false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Unbound value "Char.is_alpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_if_last_char_is_a_letter (txt : string) : bool = 
  let len = String.length txt in
  if len = 0 then
    false
  else if len = 1 then
    Char.is_alpha txt.[0]
  else
    match txt.[len - 1], txt.[len - 2] with
    | c, ' ' when Char.is_alpha c -> true
    | _ -> false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Unbound value "Char.is_alpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_if_last_char_is_a_letter (txt : string) : bool = 
  let len = String.length txt in
  if len = 0 then
    false
  else if len = 1 then
    Char.isalpha txt.[0]
  else
    match txt.[len - 1], txt.[len - 2] with
    | c, ' ' when Char.isalpha c -> true
    | _ -> false

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:5: Unbound value "Char.isalpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_if_last_char_is_a_letter (txt : string) : bool = 
  let len = String.length txt in
  if len = 0 then
    false
  else if len = 1 then
    'a' <= txt.[0] && txt.[0] <= 'z' || 'A' <= txt.[0] && txt.[0] <= 'Z'
  else
    match txt.[len - 1], txt.[len - 2] with
    | c, ' ' when 'a' <= c && c <= 'z' || 'A' <= c && c <= 'Z' -> true
    | _ -> false

