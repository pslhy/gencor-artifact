
let rec file_name_check (file_name : string) : string =
  let has_exactly_one_dot =
    try let _ = String.index file_name '.' in true
    with Not_found -> false in
  let has_no_more_than_three_digits =
    let num_digits = String.length (String.concat "" (List.filter (fun c -> '0' <= c && c <= '9') (String.to_seq file_name))) in
    num_digits <= 3 in  
  let substring_before_dot_starts_with_letter =
    try let first_char = String.get file_name (String.index file_name '.' - 1) in 'a' <= first_char && first_char <= 'z' || 'A' <= first_char && first_char <= 'Z'
    with Not_found -> false in
  let substring_after_dot_is_valid =
    List.exists (fun ext -> String.ends_with file_name ext) ["txt"; "exe"; "dll"] in
  if has_exactly_one_dot &&
     has_no_more_than_three_digits &&
     substring_before_dot_starts_with_letter &&
     substring_after_dot_is_valid
  then "Yes" else "No"

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
