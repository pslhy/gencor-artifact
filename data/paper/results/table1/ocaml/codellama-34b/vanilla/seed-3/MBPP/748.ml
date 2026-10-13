let rec capital_words_spaces (str1 : string) : string =
  if str1 = "" then "" else
  let (hd, tl) = str1.(0), str1.(1..) in
  if Char.is_uppercase hd then String.concat " " (String.of_char hd :: capital_words_spaces tl)
  else hd :: []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
