(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
let rec remove_lowercase (str1 : string) : string =
  match String.lowercase str1 with
  | [] -> str1
  | hd :: tl ->
    let is_substring = List.exists (String.is_sublist hd str1) in
    if is_substring then
      remove_lowercase (String.replace_first hd "" str1)
    else
      str1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:9: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_lowercase (str1 : string) : string =
  match String.lowercase str1 with
  | _ -> str1;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:9: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_lowercase (str1 : string) : string =
  match String.lowercase str1 with
  | Lowercase -> ""
  | Uppercase -> str1

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:9: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_lowercase (str1 : string) : string =
  match String.lowercase str1 with
  | Lowercase -> ""
  | Uppercase -> str1

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:9: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_lowercase (str1 : string) : string =
  if String.lowercase str1 = ""
  then str1
  else String.uppercase (remove_lowercase (String.lowercase str1))

