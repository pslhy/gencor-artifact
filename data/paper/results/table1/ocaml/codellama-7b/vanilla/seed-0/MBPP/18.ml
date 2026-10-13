let rec remove_dirty_chars (string : string) (second_string : string) : string =
  match second_string with
  | [] -> string
  | second_char :: second_rest ->
    remove_dirty_chars (String.remove_char string second_char) second_rest

and remove_dirty_chars_rec (string : string) (second_string : string) : string =
  match String.index_opt second_string string with
  | Some i ->
    let prefix = String.subs string 0 i in
    let suffix = String.subs string (i + 1) (String.length string - i - 1) in
    prefix ^ remove_dirty_chars_rec suffix second_string
  | None -> string


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
