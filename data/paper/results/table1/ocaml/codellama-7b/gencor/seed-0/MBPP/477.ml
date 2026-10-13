
let rec is_lower (string : string) : string =
  if string = ""
  then ""
  else if Char.lowercase_ascii(string.[0]) = string.[0]
  then
    is_lower(String.sub(string, 1))
  else if Char.lowercase_ascii(string.[0]) = string.[0]
  then
    is_lower(String.sub(string, 1))
  else string

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
