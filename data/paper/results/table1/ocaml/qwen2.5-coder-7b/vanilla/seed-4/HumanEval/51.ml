let rec remove_vowels (text : string) : string = 
  let is_vowel c = 
    match Char.lowercase_ascii c with 
    | 'a' | 'e' | 'i' | 'o' | 'u' -> true 
    | _ -> false 
  in
  let rec helper s acc = 
    match s with 
    | "" -> List.rev acc 
    | c::cs -> if is_vowel c then helper cs acc else helper cs (c::acc) 
  in 
  helper (String.to_list text) []
  |> List.map Char.escaped 
  |> String.concat ""


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
