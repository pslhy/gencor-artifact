(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
let rec get_Char (strr : string) : string =
  if strr = "" then "" else
  let (hd, tl) = strr.(0), strr.(1) in
  let ascii_hd = int_of_char hd in
  let ascii_ht = int_of_char tl in
  let sum = (ascii_hd mod 26) + (ascii_tl mod 26) in
  sum mod 26 ;;

