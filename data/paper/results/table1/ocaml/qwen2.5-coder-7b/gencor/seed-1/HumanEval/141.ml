
let rec file_name_check (file_name : string) : string = 
  let digit_count = ref 0 in
  let valid_extensions = ["txt"; "exe"; "dll"] in
  
  let check_char c =
    if c = '.' then
      if !digit_count = 0 || List.mem file_name valid_extensions then
        raise (Failure "Invalid file name")
      else
        raise (Failure "Invalid file name")
    else if c >= '0' && c <= '9' then
      incr digit_count
    else if not (c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z') then
      raise (Failure "Invalid file name")
  in
  
  try
    String.iter check_char file_name;
    if !digit_count <= 3 && List.mem (String.rindex file_name '.' |> fun i -> String.sub file_name (i + 1) (String.length file_name - i - 1)) valid_extensions then
      "Yes"
    else
      "No"
  with
    | Failure _ -> "No"

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
