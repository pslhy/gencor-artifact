let rec file_name_check (file_name : string) : string =
  let len = String.length file_name in
  let dots = ref 0 in
  let nums = ref 0 in
  let valid_char = ref true in
  let dot_pos = ref (-1) in
  let ext = ref "" in
  for i = 0 to len - 1 do
    let c = file_name.[i] in
    if c = '.' then begin
      dots := !dots + 1;
      dot_pos := i
    end else if '0' <= c && c <= '9' then begin
      nums := !nums + 1
    end else if not (('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z')) then begin
      valid_char := false
    end;
  done;
  if !dots <> 1 || !nums > 3 || !dot_pos = 0 || !dot_pos = len - 1 || not !valid_char then
    "No"
  else begin
    ext := String.sub file_name (!dot_pos + 1) (len - !dot_pos - 1);
    if !ext = "txt" || !ext = "exe" || !ext = "dll" then
      "Yes"
    else
      "No"
  end;;


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
