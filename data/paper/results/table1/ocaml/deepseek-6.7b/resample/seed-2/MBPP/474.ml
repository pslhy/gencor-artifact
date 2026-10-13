(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to replace characters in a string. *)
let rec replace_char (str1 : string) (ch : string) (newch : string) : string =
  match str1 with
  | "" -> ""
  | h::t -> if h = ch then newch else h ^ (replace_char t ch newch) in

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec replace_char (str1 : string) (ch : string) (newch : string) : string =
  match str1 with
  | "" -> ""
  | h::t -> if h = ch then newch else h ^ (replace_char t ch newch)

