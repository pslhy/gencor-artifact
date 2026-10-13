let rec capital_words_spaces (str1 : string) : string =
  if str1 = "" then
    ""
  else if str1.[0] = '/' then
    str1.[0]
  else
    str1.[0] ^ " " ^ capital_words_spaces (String.sub str1 1 (String.length str1 - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
