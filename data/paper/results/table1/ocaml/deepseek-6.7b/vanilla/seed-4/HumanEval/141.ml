let rec file_name_check (file_name : string) : string =
  let has_more_than_three_numbers =
    file_name
    |> String.to_seq
    |> Seq.filter (Char.between '0' '9')
    |> Seq.length
    |> (<= 3)
  and check_first_character =
    file_name
    |> String.to_seq
    |> Seq.nth 0
    |> (fun c -> (Char.between 'a' c 'z') || (Char.between 'A' c 'Z'))
    && not (file_name = "")
  and check_dot = String.contains file_name '.'
  and check_extension =
    let extension = file_name |> String.rindex_from file_name (String.length file_name) |> String.sub file_name in
    List.mem extension ["txt"; "exe"; "dll"]
  in
  if has_more_than_three_numbers && check_first_character &&
     check_dot && check_extension
  then "Yes"
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
