
let rec file_name_check (file_name : string) : string =
  let length = String.length file_name in
  let rec count_digits i count =
    if i = length then count
    else if '0' <= file_name.[i] && file_name.[i] <= '9' then count_digits (i+1) (count+1)
    else count_digits (i+1) count
  in
  let count_dots i count =
    if i = length then count
    else if file_name.[i] = '.' then count_digits (i+1) (count+1)
    else count_digits (i+1) count
  in
  let count_first_character =
    if file_name.[0] >= 'a' && file_name.[0] <= 'z' || file_name.[0] >= 'A' && file_name.[0] <= 'Z' then 1
    else 0
  in
  let count = count_dots 0 0 in
  if count <> 1 || count_digits 0 0 > 3 || count_first_character = 0 then "No"
  else
    let extension = String.sub file_name (String.index file_name '.') length in
    if extension = ".txt" || extension = ".exe" || extension = ".dll" then "Yes"
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
