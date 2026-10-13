let rec file_name_check (file_name : string) : string =
    let contains_more_than_three_digits (str : string) : bool =
        let length : int = String.length str in
        let rec count_digits (index : int) : int =
            if str.[index] < '0' || str.[index] > '9' then
                count_digits (index + 1)
            else
                count_digits (index + 1) + 1
        in
        count_digits 0 > 3
    in
    let contains_dot (str : string) : bool =
        String.contains str '.'
    in
    let char_is_letter (c : char) : bool =
        (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')
    in
    let parts = Str.split (Str.regexp ".") file_name in
    let after_dot =
        if BatList.length parts >= 2 then
            parts.1
        else
            ""
    in
    if not (contains_more_than_three_digits file_name) &&
       contains_dot file_name &&
       (* The substring before the dot should not be empty, and it starts with a letter from the latin alphapet ('a'-'z' and 'A'-'Z') *)
       not (BatString.is_empty parts.0 || not (char_is_letter parts.0.[0])) &&
       (* The substring after the dot should be one of these: ['txt', 'exe', 'dll'] *)
       not (BatList.mem_string (Str.lowercase after_dot) ["txt"; "exe"; "dll"])
    then
        "Yes"
    else
        "No"


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
