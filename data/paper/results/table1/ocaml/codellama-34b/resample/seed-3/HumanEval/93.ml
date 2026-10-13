(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec encode (message : string) : string =
  if String.length message <= 1 then
    message
  else
    let (head, tail) = (String.get message, String.sub message 1 (String.length message - 1)) in
    let (encodedHead, encodedTail) =
      if head >= 'A' && head <= 'Z' then
        let head' = Char.chr ((((head - 'A') + 2) mod 26) + 'A') in
        (head', encodedTail)
      else
        let head' = Char.chr ((((head - 'a') + 2) mod 26) + 'a') in
        (head', encodedTail) in
    (String.make 1 encodedHead) ^ (encode encodedTail)

