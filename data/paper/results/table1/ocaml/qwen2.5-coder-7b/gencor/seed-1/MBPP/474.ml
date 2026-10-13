
let rec replace_char (str1 : string) (ch : string) (newch : string) : string = 
  if String.length str1 = 0 then str1 
  else if str1.[0] = ch.[0] then newch ^ (replace_char (String.sub str1 1 (String.length str1 - 1)) ch newch)
  else string_of_int(int_of_char str1.[0]) ^ (replace_char (String.sub str1 1 (String.length str1 - 1)) ch newch)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace characters in a string. *)
