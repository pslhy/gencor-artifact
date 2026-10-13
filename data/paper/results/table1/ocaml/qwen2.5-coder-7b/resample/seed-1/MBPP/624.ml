(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
let rec is_upper (string : string) : string = 
  if string = "" then 
    ""
  else 
    let first_char = string.[0] in
    let upper_char = if first_char >= 'a' && first_char <= 'z' then char (int_of_char first_char - 32) else first_char in
    String.make 1 upper_char ^ is_upper (String.sub string 1 (String.length string - 1))

let to_uppercase (str : string) : string =
  is_upper str

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:69: Unbound value "char" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string = 
  if string = "" then 
    ""
  else 
    let first_char = string.[0] in
    let upper_char = if first_char >= 'a' && first_char <= 'z' then char_of_int (int_of_char first_char - 32) else first_char in
    String.make 1 upper_char ^ is_upper (String.sub string 1 (String.length string - 1))

let to_uppercase (str : string) : string =
  is_upper str

