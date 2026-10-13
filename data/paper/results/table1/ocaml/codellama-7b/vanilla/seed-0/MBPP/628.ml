let rec replace_spaces (string : string) : string =
  if string = ""
  then ""
  else if Char.code (String.get string 0) = 32
       then "%20" ^ replace_spaces (String.sub string 1 (String.length string - 1))
       else (String.get string 0) ^ replace_spaces (String.sub string 1 (String.length string - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all spaces in the given string with '%20'. *)
