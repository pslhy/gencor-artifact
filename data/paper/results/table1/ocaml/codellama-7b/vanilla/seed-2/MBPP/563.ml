let rec extract_values (text : string) : string list =
  match text with
  | "" -> []
  | _ ->
    let quote_char = text.[0] in
    let (before_quote, after_quote) = String.split_at text quote_char in
    let value = String.sub before_quote 1 (String.length before_quote - 1) in
    value :: extract_values after_quote


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
