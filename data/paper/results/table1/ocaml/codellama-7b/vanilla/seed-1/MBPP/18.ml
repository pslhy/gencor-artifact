let rec remove_dirty_chars (string : string) (second_string : string) : string =
match second_string with
| "" -> string
| _ ->
  let first_char = String.get second_string 0 in
  if String.contains second_string first_char then
    remove_dirty_chars string (String.concat "" @@ List.map (fun c -> if c = first_char then "" else c) (String.to_list second_string))
  else
    remove_dirty_chars string (String.remove_prefix second_string 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
