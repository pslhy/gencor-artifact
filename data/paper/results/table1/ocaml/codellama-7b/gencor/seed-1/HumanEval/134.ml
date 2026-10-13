
let rec check_if_last_char_is_a_letter (txt : string) : bool =
    let last_char = String.get txt (String.length txt - 1) in
    let is_letter = Char.uppercase_ascii last_char = last_char || Char.lowercase_ascii last_char = last_char in
    if is_letter then
        let after_last_char = String.sub txt (String.length txt - 1) 1 in
        let is_part_of_word = not (String.contains after_last_char ' ' || String.length after_last_char = 0) in
        not is_part_of_word
    else
        false
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
