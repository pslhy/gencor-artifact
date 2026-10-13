let rec remove_lowercase (str1 : string) : string =
  if str1 = "" then "" else
  let (sub_str, rest) = String.split_at (str1, 1) in
  if sub_str = lowercase sub_str then remove_lowercase rest
  else sub_str ^ remove_lowercase rest

and lowercase (str : string) : string =
  String.map (fun c ->
    if c >= 'a' && c <= 'z' then c - 'a' + 'A' else c
  ) str

in
remove_lowercase


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
