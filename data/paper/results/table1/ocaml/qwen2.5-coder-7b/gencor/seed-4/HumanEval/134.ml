
let rec check_if_last_char_is_a_letter (txt : string) : bool = 
  let trimmed = String.trim txt in
  if trimmed = "" then false else
  let last_char = trimmed.[String.length trimmed - 1] in
  let prev_char = if String.length trimmed > 1 then trimmed.[String.length trimmed - 2] else ' ' in
  Char.unsafe_chr last_char >= 'a' && Char.unsafe_chr last_char <= 'z' && prev_char = ' '

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
