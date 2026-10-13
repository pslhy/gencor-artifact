
let rec remove_parenthesis (items : string list) : string =
  match items with
  | [] -> ""
  | h::t ->
     let open_p = String.index_from h 0 '(' in
     let close_p = String.index_from h open_p ')' in
     let left_str = String.sub h 0 open_p in
     let right_str = String.sub h (close_p + 1) (String.length h - close_p - 1) in
     left_str ^ remove_parenthesis (right_str :: t)

let remove_parenthesis_from_string (s : string) : string =
  let words = String.split_on_char ' ' s in
  remove_parenthesis words

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove the parenthesis and what is inbetween them from a string. *)
