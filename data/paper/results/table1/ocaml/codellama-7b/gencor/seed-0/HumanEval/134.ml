
let rec check_if_last_char_is_a_letter (txt : string) : bool =
  match txt with
  | "" -> false
  | _ ->
    let last_char = String.get txt (String.length txt - 1) in
    match Char.lowercase_ascii last_char with
    | 'a'..'z' -> true
    | _ ->
      if String.get txt (String.length txt - 2) = ' ' then
        false
      else
        check_if_last_char_is_a_letter (String.sub txt 0 (String.length txt - 1))

let () =
  let txt = "apple pi e" in
  Printf.printf "%b\n" (check_if_last_char_is_a_letter txt);
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
