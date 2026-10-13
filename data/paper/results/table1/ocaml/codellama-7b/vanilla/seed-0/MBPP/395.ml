let rec first_non_repeating_character (str1 : string) : string option =
  if str1.[0] <> str1.[1] then
    Some str1.[0]
  else
    first_non_repeating_character (str1.[1..])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
