let rec remove_all_spaces (text : string) : string =
  match text with
  | "" -> ""
  | _ when String.contains text ' ' -> remove_all_spaces (String.sub text 0 (String.index text ' ')) ^ remove_all_spaces (String.sub text ((String.index text ' ') + 1) ((String.length text) - (String.index text ' ')))
  | _ -> text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from a string. *)
