let rec file_name_check (file_name : string) : string =
  let has_exactly_one_dot =
    try let _ = String.index file_name '.' in true
    with Not_found -> false in
  let has_no_more_than_three_digits =
    let num_digits = String.length (String.filter ((<>) '0' && ((>=) '0') && ((<=) '9')) file_name) in
    num_digits <= 3 in
  let starts_with_letter =
    let first_char = String.get file_name 0 in
    (first_char >= 'a' && first_char <= 'z') || (first_char >= 'A' && first_char <= 'Z') in
  let extension_is_valid =
    let dot_pos = String.index file_name '.' in
    let extension = String.sub file_name (dot_pos+1) ((String.length file_name) - dot_pos - 1) in
    extension = "txt" || extension = "exe" || extension = "dll" in
  let substring_before_dot_is_not_empty =
    let dot_pos = String.index file_name '.' in
    dot_pos > 0 in
  if has_exactly_one_dot && has_no_more_than_three_digits && starts_with_letter
  && extension_is_valid && substring_before_dot_is_not_empty
  then "Yes"
  else "No"


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
