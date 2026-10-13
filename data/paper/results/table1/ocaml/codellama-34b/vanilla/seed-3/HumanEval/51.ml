let rec remove_vowels (text : string) : string =
  if text = "" then ""
  else
    let character = String.get text 0 in
    let remaining = remove_vowels (String.sub text 1 ((String.length text) - 1)) in
    if List.mem character ['a'; 'e'; 'i'; 'o'; 'u'] then
      remaining
    else
      String.concat "" [character; remaining]


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
