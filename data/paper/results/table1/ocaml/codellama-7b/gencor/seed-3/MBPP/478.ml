
let rec remove_lowercase (str1 : string) : string =
  if str1 = "" then "" else
  let (sub_str, rest) = String.split_on_char (str1.[0]) str1 in
  if sub_str.[0] >= 'a' && sub_str.[0] <= 'z' then
    remove_lowercase rest
  else
    sub_str ^ remove_lowercase rest

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
