
let rec reverse_vowels (str1 : string) : string =
  if str1 = "" then "" else
  let (vowel, rest) = str1.(0), str1.(1..(String.length str1 - 1)) in
  if vowel = 'a' || vowel = 'e' || vowel = 'i' || vowel = 'o' || vowel = 'u' then
    reverse_vowels rest^vowel else 
    str1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
