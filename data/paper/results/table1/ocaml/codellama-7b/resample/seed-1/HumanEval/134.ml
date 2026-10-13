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
    let last_char = String.get txt (String.length txt - 1) in
    let is_letter = Char.is_alpha last_char in
    let is_word_char = Char.is_alphanum last_char in
    is_letter && not is_word_char

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:21: Unbound value "Char.is_alpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_if_last_char_is_a_letter (txt : string) : bool =
    let last_char =
        if String.length txt > 0 then
            String.get txt (String.length txt - 1)
        else
            '_'
    in
    let is_letter = Char.is_alpha last_char in
    let is_word_char = Char.is_alphanum last_char in
    is_letter && not is_word_char

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:21: Unbound value "Char.is_alpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_if_last_char_is_a_letter (txt : string) : bool =
    let last_char =
        if String.length txt > 0 then
            String.get txt (String.length txt - 1)
        else
            '_'
    in
    let is_letter =
        if Char.is_alpha last_char then true
        else false
    in
    let is_word_char =
        if Char.is_alphanum last_char then true
        else false
    in
    is_letter && not is_word_char

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:12: Unbound value "Char.is_alpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_if_last_char_is_a_letter (txt : string) : bool =
    let last_char =
        if String.length txt > 0 then
            String.get txt (String.length txt - 1)
        else
            '_'
    in
    let is_letter =
        if Char.is_alpha last_char then true
        else false
    in
    let is_word_char =
        if Char.is_alphanum last_char then true
        else false
    in
    is_letter && not is_word_char

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:12: Unbound value "Char.is_alpha" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_if_last_char_is_a_letter (txt : string) : bool =
    let last_char =
        if String.length txt > 0 then
            String.get txt (String.length txt - 1)
        else
            '_'
    in
    let is_letter = Char.is_alpha last_char in
    let is_word_char = Char.is_alphanum last_char in
    is_letter && not is_word_char

