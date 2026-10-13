let rec toggle_string (string : string) : string = 
  let toggle_char c = 
    if_char_is_upper c (Char.lowercase_ascii c) (Char.uppercase_ascii c) 
  in 
  String.map toggle_char string

and if_char_is_upper c lower upper = 
  if c >= 'A' && c <= 'Z' then lower c else upper c


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
