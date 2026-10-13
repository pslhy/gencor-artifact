let rec file_name_check (file_name : string) : string =
  if Str.split_on_char '.' file_name <> 2 then
    "No"
  else if List.length (Str.split_on_char '.' file_name) > 3 then
    "No"
  else if file_name.[0] == '.' then
    "No"
  else if List.mem file_name.[2] ['x'; 'e'; 'd'] = false then
    "No"
  else if List.mem file_name.[2] ['t'; 'e'; 'd'] then
    "Yes"
  else
    let before_dot = Str.takeWhile (fun c -> c > 'a' && c < 'z' || c > 'A' && c < 'Z') file_name in
    if String.length before_dot = 0 then
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
