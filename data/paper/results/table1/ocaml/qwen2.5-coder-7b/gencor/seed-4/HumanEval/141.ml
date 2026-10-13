
let rec file_name_check (file_name : string) : string = 
  let digit_count = ref 0 in
  let has_dot = ref false in
  let valid_extension = ["txt"; "exe"; "dll"] in
  let rec check_chars acc = function
    | [] -> acc
    | c::cs -> 
        let acc = if Char.equal c '.' then acc else acc + (if Char.equal c '0' then 1 else 0) in
        (if Char.equal c '.' then has_dot := true else ());
        check_chars acc cs
  in
  let name_parts = String.split_on_char '.' file_name in
  if List.length name_parts = 2 then
    let name = List.hd name_parts in
    let extension = List.rev (List.tl (List.rev name_parts)) in
    if digit_count <= 3 && !has_dot && name <> "" && Char.equal (String.get name 0) 'a' && Char.equal (String.get name 0) 'A' && List.mem extension valid_extension then "Yes"
    else "No"
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
