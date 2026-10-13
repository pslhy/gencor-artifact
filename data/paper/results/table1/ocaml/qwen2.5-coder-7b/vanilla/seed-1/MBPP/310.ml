let rec string_to_tuple (str1 : string) : string list = 
  if str1 = "" then [] else str1.[0] :: string_to_tuple (String.sub str1 1 (String.length str1 - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a given string to a list of characters. *)
