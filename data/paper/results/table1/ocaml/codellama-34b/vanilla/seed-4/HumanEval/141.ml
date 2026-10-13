let rec file_name_check (file_name : string) : string = 
    let should_not_contain_digits = 
    (Str.regexp "[0-9]") : string -> bool in
    let should_contain_dot = 
    (Str.regexp "\.") : string -> bool in
    let should_have_extension = function
    | "txt" :: "exe" :: "dll" :: _ -> true
    | _ -> false
    in
    let is_valid_name = 
    (Str.string_match (should_not_contain_digits file_name) 0) &&
    (Str.string_match (should_contain_dot file_name) 0) &&
    should_have_extension (String.split_on_char '.' file_name)
    in
    if is_valid_name then "Yes" else "No"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function which takes a string representing a file's name, and returns *)
(*     'Yes' if the the file's name is valid, and returns 'No' otherwise. *)
(*     A file's name is considered to be valid if and only if all the following conditions *)
(*     are met: *)
(*     - There should not be more than three digits ('0'-'9') in the file's name. *)
(*     - The file's name contains exactly one dot '.' *)
(*     - The substring before the dot should not be empty, and it starts with a letter from *)
(*     the latin alphapet ('a'-'z' and 'A'-'Z'). *)
(*     - The substring after the dot should be one of these: ['txt', 'exe', 'dll'] *)
(*     Examples: *)
(*     >>> file_name_check "example.txt" *)
(*     "Yes" *)
(*     >>> file_name_check "1example.dll" *)
(*     "No" *)
