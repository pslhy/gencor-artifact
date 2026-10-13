let rec remove_vowels (text : string) : string = 
  let is_vowel ch = 
    let lowercase_ch = Char.lowercase_ascii ch in
    lowercase_ch = 'a' || lowercase_ch = 'e' || lowercase_ch = 'i' || lowercase_ch = 'o' || lowercase_ch = 'u' in
  let rec helper (acc : string) (rest : string) : string = 
    match rest with
    | "" -> acc
    | ch :: rest -> if is_vowel ch then helper acc rest else helper (acc ^ (String.make 1 ch)) rest in
  helper "" text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     remove_vowels is a function that takes string and returns string without vowels. *)
(*     >>> remove_vowels "" *)
(*     "" *)
(*     >>> remove_vowels "abcdef" *)
(*     "bcdf" *)
(*     >>> remove_vowels "aaaaa" *)
(*     "" *)
(*     >>> remove_vowels "aaBAA" *)
(*     "B" *)
(*     >>> remove_vowels "zbcd" *)
(*     "zbcd" *)
