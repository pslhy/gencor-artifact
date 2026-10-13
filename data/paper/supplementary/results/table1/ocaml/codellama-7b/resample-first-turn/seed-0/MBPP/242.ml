let rec count_charac (str1 : string) : int =
  if str1.[0] = '\0' then 0
  else str1.[0] :: count_charac (String.sub str1 1 (String.length str1 - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the total number of characters in a string. *)
