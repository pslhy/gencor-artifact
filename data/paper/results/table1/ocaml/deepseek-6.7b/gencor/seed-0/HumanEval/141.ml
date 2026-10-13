
let rec file_name_check (file_name : string) : string =
    let num_digits = String.length (String.of_seq (String.to_seq file_name |> Seq.filter Char.equal '0')) in
    let name_parts = String.split_on_char '.' file_name in
    let name_part_len = List.length name_parts in
    if (name_part_len <> 2) then "No"
    else if (name_parts.(0) = "") then "No"
    else if (num_digits > 3) then "No"
    else if not (Char.code (String.get name_parts.(0) 0) >= Char.code 'a' && Char.code (String.get name_parts.(0) 0) <= Char.code 'z')
    && not (Char.code (String.get name_parts.(0) 0) >= Char.code 'A' && Char.code (String.get name_parts.(0) 0) <= Char.code 'Z')
    then "No"
    else if (name_parts.(1) <> "txt") && (name_parts.(1) <> "exe") && (name_parts.(1) <> "dll")
    then "No"
    else "Yes"

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
