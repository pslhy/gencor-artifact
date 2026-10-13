let rec get_Char (strr : string) : string =
  match strr with
  | "" -> ""
  | _ -> Char.escaped (Char.chr ((int_of_char strr.[0]) + (int_of_string (get_ASCII_Sum strr)) mod 26 + 96))^(get_Char (String.sub strr 1 (String.length strr - 1)))

and get_ASCII_Sum (strr : string) : string =
  match strr with
  | "" -> "0"
  | _ -> string_of_int ((int_of_char strr.[0]) + int_of_string (get_ASCII_Sum (String.sub strr 1 (String.length strr - 1))) mod 26)

let encoded_text = get_Char "your_text_here"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
