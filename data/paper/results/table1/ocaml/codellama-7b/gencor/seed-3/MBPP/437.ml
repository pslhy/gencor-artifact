
let rec remove_odd (str1 : string) : string =
  if str1 = "" then "" else
  let ch = str1.[0] in
  let str2 = str1.[1..(String.length str1 - 1)] in
  if char_of_int(int_of_char(ch) mod 2) = 0 then ch :: remove_odd str2
  else remove_odd str2

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove odd characters in a string. *)
