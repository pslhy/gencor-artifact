let rec encode (message : string) : string =
  match message with
  | "" -> ""
  | _ ->
    let char = String.get message 0 in
    let vowel = char = 'a' || char = 'e' || char = 'i' || char = 'o' || char = 'u' in
    let char' = if vowel then String.make 1 (String.get "abcdefghijklmnopqrstuvwxyz" (String.index "abcdefghijklmnopqrstuvwxyz" char + 2)) else String.lowercase_ascii char in
    char' ^ encode (String.sub message 1 (String.length message - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a message, and encodes in such a *)
(*     way that it swaps case of all letters, replaces all vowels in *)
(*     the message with the letter that appears 2 places ahead of that *)
(*     vowel in the english alphabet. *)
(*     Assume only letters. *)
(*     Examples: *)
(*     >>> encode "test" *)
(*     "TGST" *)
(*     >>> encode "This is a message" *)
(*     "tHKS KS C MGSSCGG" *)
