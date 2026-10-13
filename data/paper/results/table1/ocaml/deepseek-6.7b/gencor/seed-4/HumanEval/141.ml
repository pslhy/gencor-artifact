
let rec file_name_check (file_name : string) : string =
  let has_more_than_three_numbers =
    file_name
    |> String.to_seq
    |> Seq.filter (Char.code > (Char.code '9') && Char.code < (Char.code '0'))
    |> Seq.length > 3 in
  let has_exactly_one_dot =
    file_name
    |> String.fold_left (fun acc c -> acc + if c = '.' then 1 else 0) 0
    = 1 in
  let has_non_empty_letters_before_dot =
    file_name
    |> String.index_from (0, file_name) 0 (fun c -> c = '.')
    |> (fun i -> i <> 0) in
  let starts_with_letter =
    file_name
    |> String.sub file_name 0 1
    |> String.lowercase_ascii
    |> String.contains_from (0, file_name) 0 (fun c -> c <> 'a' && c <> 'A') in
  let has_valid_extension = 
    file_name
    |> String.sub file_name (String.index_from (0, file_name) 0 (fun c -> c = '.')) (String.length file_name - 1)
    |> String.lowercase_ascii
    |> fun s -> String.contains_from (0, s) 0 (fun c -> c = 't' && c = 'x' && c = 't' || c = 'e' && c = 'x' && c = 'e' || c = 'd' && c = 'l' && c = 'l') in
  if has_more_than_three_numbers || not has_exactly_one_dot || not has_non_empty_letters_before_dot || not starts_with_letter || not has_valid_extension then
    "No"
  else
    "Yes"

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
