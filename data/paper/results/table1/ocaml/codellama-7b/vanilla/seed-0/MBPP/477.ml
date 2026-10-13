let rec is_lower (string : string) : string =
  if string = ""
  then ""
  else if Char.is_lowercase (String.get string 0)
  then String.get string 0
  else Char.lowercase (String.get string 0)

and convert_lower (string : string) : string =
  if string = ""
  then ""
  else if is_lower string
  then Char.lowercase (String.get string 0) ^ convert_lower (String.sub string 1 (String.length string - 1))
  else (Char.lowercase (String.get string 0)) ^ convert_lower (String.sub string 1 (String.length string - 1))
in
convert_lower


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
