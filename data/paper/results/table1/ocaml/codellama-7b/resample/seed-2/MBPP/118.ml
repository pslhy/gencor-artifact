(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
let rec string_to_list (string : string) : string list =
  match string with
  | "" -> []
  | _ ->
    let index = String.index string ' ' in
    let (prefix, suffix) = String.split_at string index in
    prefix :: string_to_list (String.sub suffix 1 ((String.length suffix) - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:28: Unbound value "String.split_at" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec string_to_list (string : string) : string list =
  match string with
  | "" -> []
  | _ ->
    let index = String.index string ' ' in
    let (prefix, suffix) = String.sub string index (String.length string - index) in
    prefix :: string_to_list suffix

