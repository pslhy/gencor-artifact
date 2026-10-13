
let rec capital_words_spaces (str1 : string) : string =
  match str1 with
  | "" -> ""
  | h :: t ->
    let rest = capital_words_spaces t
    in if h >= 'A' && h <= 'Z' then ' ' ^ (String.make 1 h) ^ rest
    else String.make 1 h ^ rest

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
