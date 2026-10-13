
let rec check_if_last_char_is_a_letter (txt : string) : bool =
    if txt = "" then false
    else
    let last_char = txt.[String.length txt - 1] in
        if not (Char.code last_char < 65 || Char.code last_char > 122 ||
              (Char.code last_char > 90 && Char.code last_char < 97)) then false
        else
        match txt.[String.length txt - 2] with
        | ' ' -> false
        | _ -> true

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
