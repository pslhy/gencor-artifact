let rec file_name_check (file_name : string) : string = 
  let digit_count = ref 0 in
  let split = String.split_on_char '.' file_name in
  let valid_extensions = ["txt"; "exe"; "dll"] in
  if List.length split <> 2 then "No"
  else
    let first_part, second_part = split in
    if first_part = "" || not ((first_part.[0] >= 'a' && first_part.[0] <= 'z') || (first_part.[0] >= 'A' && first_part.[0] <= 'Z')) then "No"
    else
      List.iter (fun char -> if char >= '0' && char <= '9' then digit_count := !digit_count + 1) first_part;
      if !digit_count > 3 then "No"
      else
        if List.mem second_part valid_extensions then "Yes"
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
