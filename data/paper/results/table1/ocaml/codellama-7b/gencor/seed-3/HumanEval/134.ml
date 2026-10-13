
let rec check_if_last_char_is_a_letter (txt : string) : bool =
  if String.length txt = 0 then
    false
  else if Char.equal txt.[String.length txt - 1] ' ' then
    false
  else
    let prev_char = txt.[String.length txt - 2] in
    let is_prev_char_space = Char.equal prev_char ' ' in
    let is_last_char_alpha = Char.uppercase_ascii txt.[String.length txt - 1] <= 'Z' && Char.uppercase_ascii txt.[String.length txt - 1] >= 'A' in
    if is_prev_char_space && is_last_char_alpha then
      true
    else
      check_if_last_char_is_a_letter (String.sub txt 0 (String.length txt - 1))

let () =
  Printf.printf "%b\n" (check_if_last_char_is_a_letter "apple pie")
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
