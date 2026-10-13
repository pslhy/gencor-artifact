let rec get_Char (strr : string) : string =
  if strr = "" then "" else
  let curr_char = String.get strr 0 in
  let next_char =
    (curr_char - 'a' + 1) mod 26 + 'a' in
  String.make 1 next_char ^ get_Char (String.sub strr 1 (String.length strr - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
