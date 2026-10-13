(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a given string to a list of characters. *)
let rec string_to_tuple (str1 : string) : string list =
  match str1 with
  | "" -> []
  | _ -> Str.first_chars str1 1 @ string_to_tuple (Str.string_after str1 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:10: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_tuple (str1 : string) : string list =
  match str1 with
  | "" -> []
  | _ -> String.sub str1 0 1 :: string_to_tuple (String.sub str1 1 (String.length str1 - 1))

