let rec file_name_check (file_name : string) : string =
  let length = String.length file_name in
  let rec count_digits i count =
    if i = length then count
    else if '0' <= file_name.[i] && file_name.[i] <= '9' then count_digits (i+1) (count+1)
    else count_digits (i+1) count
  in
  let count_dots i count =
    if i = length then count
    else if file_name.[i] = '.' then count_dots (i+1) (count+1)
    else count_dots (i+1) count
  in
  let count_digits = count_digits 0 0 in
  let count_dots = count_dots 0 0 in
  let extension_starts_at = String.index file_name '.' in
  let name_part = String.sub file_name 0 extension_starts_at in
  let extension_part = String.sub file_name (extension_starts_at+1) (length - extension_starts_at - 1) in
  if count_digits > 3 || count_dots <> 1 || name_part = "" || not (String.lowercase_ascii name_part.[0] <> name_part.[0])
        || not (extension_part = "txt" || extension_part = "exe" || extension_part = "dll") then
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
