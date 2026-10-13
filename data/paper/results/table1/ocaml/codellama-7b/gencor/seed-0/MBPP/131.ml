
let rec reverse_vowels (str1 : string) : string =
  if str1.[0] <> 'a' && str1.[0] <> 'e' && str1.[0] <> 'i' && str1.[0] <> 'o' && str1.[0] <> 'u'
  then reverse_vowels (str1.[1..(String.length str1 - 1)])
  else str1 ^ str1.[1..(String.length str1 - 1)]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
