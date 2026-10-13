let rec is_upper (string : string) : string =
  if string = ""
  then ""
  else if Char.is_uppercase (String.get string 0)
  then String.get string 0
  else Char.uppercase (String.get string 0)

let convert_to_uppercase (string : string) : string =
  if string = ""
  then ""
  else is_upper (string.substring (1)) ^ Char.uppercase (string.[0])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
