let rec file_name_check (file_name : string) : string =
  if String.length file_name > 4 then "No"
  else if String.contains file_name '.' then
    let prefix = String.sub file_name 0 (String.index_opt file_name '.') in
    let suffix = String.sub file_name (String.index_opt file_name '.') (String.length file_name - (String.index_opt file_name '.')) in
    if String.length prefix > 3 then "No"
    else if String.is_empty prefix then "No"
    else if not (prefix.[0] >= 'a' && prefix.[0] <= 'z' || prefix.[0] >= 'A' && prefix.[0] <= 'Z') then "No"
    else if suffix <> "txt" && suffix <> "exe" && suffix <> "dll" then "No"
    else "Yes"
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
