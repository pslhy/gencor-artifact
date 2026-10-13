let rec check_if_last_char_is_a_letter (txt : string) : bool =
  match txt with
  | "" -> false
  | _ ->
    let last_char = String.get txt (String.length txt - 1) in
    match Char.lowercase last_char with
    | 'a'..'z' -> true
    | 'A'..'Z' -> true
    | _ ->
      let is_not_part_of_a_word = check_if_last_char_is_a_letter (String.sub txt 0 (String.length txt - 2)) in
      not is_not_part_of_a_word

let () =
  print_endline (string_of_bool (check_if_last_char_is_a_letter "apple pie"));
  print_endline (string_of_bool (check_if_last_char_is_a_letter "apple pi e"));
  print_endline (string_of_bool (check_if_last_char_is_a_letter "apple pi e "));
  print_endline (string_of_bool (check_if_last_char_is_a_letter ""))


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
