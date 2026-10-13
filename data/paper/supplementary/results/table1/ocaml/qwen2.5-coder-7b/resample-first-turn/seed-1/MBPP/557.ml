let rec toggle_string (string : string) : string = 
  let rec toggle_char (char : char) : char = 
    if Char.is_uppercase_ascii char then Char.lowercase_ascii char
    else Char.uppercase_ascii char 
  in
  let rec build_string (string : string) (index : int) : string = 
    if index = String.length string then ""
    else (String.make 1 (toggle_char (String.unsafe_get string index))) ^ (build_string string (index + 1))
  in
  build_string string 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
