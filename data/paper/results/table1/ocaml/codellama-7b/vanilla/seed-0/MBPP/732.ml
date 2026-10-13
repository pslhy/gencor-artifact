let rec replace_specialchar (text : string) : string =
  match text with
  | "" -> ""
  | _ ->
    let head, tail = (String.get text 0), String.sub text 1 (String.length text - 1) in
    match head with
    | ' ' | ',' | '.' -> ":" ^ replace_specialchar tail
    | _ -> head ^ replace_specialchar tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all occurrences of spaces, commas, or dots with a colon. *)
