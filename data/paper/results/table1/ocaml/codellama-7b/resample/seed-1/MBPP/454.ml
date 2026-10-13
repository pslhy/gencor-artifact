(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that matches a word containing 'z'. *)
let rec text_match_wordz (text : string) : bool =
    let contains_z =
        let is_z c = c = 'z' in
        List.exists is_z (String.to_list text)
    in
    match text with
    | "" -> false
    | _ -> contains_z

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:27: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_wordz (text : string) : bool =
    let is_z c = c = 'z' in
    let contains_z = List.exists is_z (String.to_list text) in
    match text with
    | "" -> false
    | _ -> contains_z

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:40: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_wordz (text : string) : bool =
    let is_z c = c = 'z' in
    let contains_z = List.exists is_z (String.to_list text) in
    match text with
    | "" -> false
    | _ -> contains_z

let main (text : string) =
    let result = text_match_wordz text in
    print_string (string_of_bool result);
    print_newline ()

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:40: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_wordz (text : string) : bool =
    let is_z c = c = 'z' in
    let contains_z = String.contains (text, 'z') in
    match text with
    | "" -> false
    | _ -> contains_z

let main (text : string) =
    let result = text_match_wordz text in
    print_string (string_of_bool result);
    print_newline ()

