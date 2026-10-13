(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec file_name_check (file_name : string) : string =
    let len = String.length file_name in
    let rec count_digits (i : int) : int =
        if i < len && file_name.[i] >= '0' && file_name.[i] <= '9'
        then count_digits (i + 1) + 1
        else 0 in
    let rec check_substring (i : int) : bool =
        if i < len && file_name.[i] != '.'
        then check_substring (i + 1)
        else if i < len - 1 && file_name.[i + 1] == '.'
        then false
        else true in
    let rec check_extension (i : int) : bool =
        let extension = String.sub file_name (i + 1) (len - i - 1) in
        extension == "txt" || extension == "exe" || extension == "dll" in
    if count_digits 0 > 3
    then "No"
    else if not (check_substring 0)
    then "No"
    else if not (check_extension (String.rindex file_name '.'))
    then "No"
    else "Yes"

