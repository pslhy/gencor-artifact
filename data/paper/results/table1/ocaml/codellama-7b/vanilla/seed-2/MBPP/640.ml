let rec remove_parenthesis (items : string list) : string =
  match items with
  | [] -> ""
  | x :: xs -> x ^ remove_parenthesis xs

let remove_parenthesis_from_string (s : string) : string =
  let open_paren_idx = String.index s '(' in
  let closing_paren_idx = String.index_from s (open_paren_idx + 1) ')' in
  let before_paren = String.sub s 0 open_paren_idx in
  let after_paren = String.sub s (closing_paren_idx + 1) (String.length s - (closing_paren_idx + 1)) in
  before_paren ^ remove_parenthesis (String.split_on_char ',' after_paren)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove the parenthesis and what is inbetween them from a string. *)
