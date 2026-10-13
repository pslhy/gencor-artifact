let rec file_name_check (file_name : string) : string = 
  let dot_count = ref 0 in
  let digit_count = ref 0 in
  let is_alpha c = c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z' in
  let substring_before_dot = ref "" in
  let substring_after_dot = ref "" in
  let rec check_chars i =
    if i < String.length file_name then
      match file_name.[i] with
      | '.' ->
          incr dot_count;
          if !dot_count > 1 then "No"
          else substring_before_dot := !substring_before_dot ^ ".";
          substring_after_dot := substring_after_dot ^ "";
      | '0'..'9' ->
          incr digit_count;
          if !digit_count > 3 then "No"
          else substring_before_dot := !substring_before_dot ^ (String.make 1 file_name.[i]);
          substring_after_dot := substring_after_dot ^ ".";
      | 'a'..'z' | 'A'..'Z' ->
          if !dot_count = 0 then substring_before_dot := !substring_before_dot ^ (String.make 1 file_name.[i])
          else substring_after_dot := !substring_after_dot ^ (String.make 1 file_name.[i])
      | _ -> "No"
    else
      if !dot_count = 0 || !digit_count > 3 || String.length !substring_before_dot = 0 || 
         not (is_alpha !substring_before_dot.[0]) || 
         not (List.mem !substring_after_dot [".txt"; ".exe"; ".dll"]) then 
        "No"
      else "Yes"
  in
  check_chars 0


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
