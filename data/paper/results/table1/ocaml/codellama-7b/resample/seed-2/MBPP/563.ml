(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
let rec extract_values (text : string) : string list =
  match text with
  | "" -> []
  | _ ->
    let quote_char = text.[0] in
    let (before_quote, after_quote) = String.split_at text quote_char in
    let value = String.sub before_quote 1 (String.length before_quote - 1) in
    value :: extract_values after_quote

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:39: Unbound value "String.split_at" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec extract_values (text : string) : string list =
  match text with
  | "" -> []
  | _ ->
    let quote_char = text.[0] in
    let (before_quote, after_quote) = String.split_on_char quote_char text in
    let value = before_quote in
    value :: extract_values after_quote

