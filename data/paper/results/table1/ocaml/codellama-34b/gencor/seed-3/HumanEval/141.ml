
let rec file_name_check (file_name : string) : string =
  if String.length file_name = 0 then "No"
  else
    let rec check_after_dot (name : string) : bool =
      let dot_index = String.index name '.' in
      let after_dot = String.sub name (dot_index + 1) (String.length name - dot_index - 1) in
      if after_dot = "txt" || after_dot = "dll" || after_dot = "exe" then true
      else false
    in
    let rec check_before_dot (name : string) : bool =
      let dot_index = String.rindex name '.' in
      let before_dot = String.sub name 0 dot_index in
      if String.length before_dot = 0 || not (String.for_all ((=) '.') before_dot) then false
      else true
    in
    if check_after_dot file_name && check_before_dot file_name then "Yes"
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
