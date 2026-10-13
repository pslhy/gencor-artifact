let rec encode (message : string) : string =
  if String.length message = 0 then
    ""
  else if Char.is_lowercase message.[0] then
    Char.uppercase message.[0] ^ encode (String.slice message 1 (String.length message - 1))
  else if Char.is_uppercase message.[0] then
    Char.lowercase message.[0] ^ encode (String.slice message 1 (String.length message - 1))
  else
    message.[0] ^ encode (String.slice message 1 (String.length message - 1))


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
