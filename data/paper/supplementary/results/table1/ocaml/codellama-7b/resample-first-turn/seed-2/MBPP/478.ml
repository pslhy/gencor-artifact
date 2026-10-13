let rec remove_lowercase (str1 : string) : string =
  match String.lowercase str1 with
  | [] -> str1
  | hd :: tl ->
    let is_substring = List.exists (String.is_sublist hd str1) in
    if is_substring then
      remove_lowercase (String.replace_first hd "" str1)
    else
      str1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
