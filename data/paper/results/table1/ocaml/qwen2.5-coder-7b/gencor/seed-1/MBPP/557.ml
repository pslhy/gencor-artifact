
let rec toggle_string (string : string) : string = 
  let rec toggle_char (char : char) : char = 
    if Char.code char >= Char.code 'a' && Char.code char <= Char.code 'z' 
    then Char.chr (Char.code char - (Char.code 'a' - Char.code 'A'))
    else if Char.code char >= Char.code 'A' && Char.code char <= Char.code 'Z' 
    then Char.chr (Char.code char + (Char.code 'a' - Char.code 'A'))
    else char
  in
  String.map toggle_char string

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
