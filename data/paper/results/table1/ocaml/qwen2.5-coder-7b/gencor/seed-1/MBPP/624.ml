
let rec is_upper (string : string) : string = 
  if string = "" then 
    ""
  else 
    let first_char = string.[0] in
    let upper_char = if first_char >= 'a' && first_char <= 'z' then char_of_int (int_of_char first_char - 32) else first_char in
    string_of_int (int_of_char upper_char) ^ is_upper (String.sub string 1 (String.length string - 1))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
