let rec check_if_last_char_is_a_letter (txt : string) : bool = 
  let len = String.length txt in
  if len = 0 then
    false
  else
    match txt.[len - 1] with
    | 'a' .. 'z' | 'A' .. 'Z' ->
      if len = 1 || txt.[len - 2] = ' ' then
        true
      else
        false
    | _ ->
      false


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
