let rec remove_uppercase (str1 : string) : string =
  let str2 = String.sub str1 0 1 in
  if String.length str1 = 0 then "" else
  if not (String.uppercase_ascii str2 = str2) then 
    String.sub str1 0 1 ^ remove_uppercase (String.sub str1 1 (String.length str1 - 1))
  else
    remove_uppercase (String.sub str1 1 (String.length str1 - 1));;
  


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
