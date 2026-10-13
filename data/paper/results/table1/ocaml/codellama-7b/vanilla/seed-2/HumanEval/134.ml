let rec check_if_last_char_is_a_letter (txt : string) : bool =
  match String.length txt with
  | 0 -> false
  | _ ->
      let last_char = String.get txt (String.length txt - 1) in
      not (is_letter last_char) || is_whitespace (String.get txt (String.length txt - 2))
and is_letter (ch : char) : bool =
  match ch with
  | 'a' .. 'z' | 'A' .. 'Z' -> true
  | _ -> false
and is_whitespace (ch : char) : bool =
  match ch with
  | ' ' | '\t' | '\n' -> true
  | _ -> false
;;


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
