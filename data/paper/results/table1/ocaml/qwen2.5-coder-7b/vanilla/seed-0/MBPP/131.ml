let rec reverse_vowels (str1 : string) : string = 
  let is_vowel ch = 
    let ch = Char.lowercase_ascii ch in 
    ch = 'a' || ch = 'e' || ch = 'i' || ch = 'o' || ch = 'u' in 
  let rec collect_vowels (acc : char list) (str : string) (pos : int) : char list * char list =
    if pos >= String.length str then (List.rev acc, str) 
    else if is_vowel (str.[pos]) then collect_vowels (str.[pos] :: acc) str (pos + 1) 
    else collect_vowels acc str (pos + 1) in 
  let collected_vowels, rest_str = collect_vowels [] str1 0 in 
  let rec replace_vowels (vowels : char list) (str : string) (pos : int) (result : char list) : char list =
    if pos >= String.length str then List.rev result 
    else if is_vowel (str.[pos]) then replace_vowels vowels rest_str (pos + 1) (vowels.[0] :: result) 
    else replace_vowels vowels rest_str (pos + 1) (str.[pos] :: result) in 
  replace_vowels collected_vowels str1 0 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
