let rec get_Char (strr : string) : string =
  if String.length strr = 0 then " "
  else let quotient = Char.code strr.[0] in
       let ascii_char = Char.chr (quotient mod 26) in
       Char.escaped ascii_char ^ get_Char (String.sub strr 1 (String.length strr - 1))

let find_Char (s : string) : string =
  let res = get_Char s in
  if String.compare " " res = 0 then ""
  else res


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
