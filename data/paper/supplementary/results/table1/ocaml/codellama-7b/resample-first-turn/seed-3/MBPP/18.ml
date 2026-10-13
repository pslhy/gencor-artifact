let rec remove_dirty_chars (string : string) (second_string : string) : string =
  if second_string = "" then
    string
  else
    remove_dirty_chars (Str.replace_first (Str.regexp (Str.escape second_string)) "" string) second_string


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
