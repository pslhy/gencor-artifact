let rec replace_spaces (text : string) : string =
  match text with
  | "" -> ""
  | h::t -> (if h = ' ' then "_" else if h = '_' then " " else h) ^ replace_spaces t;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)
