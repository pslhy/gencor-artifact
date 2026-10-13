
let rec encode (message : string) : string =
  match message with
  | "" -> ""
  | _ ->
    let char = String.get message 0 in
    let is_vowel =
      match char with
      | 'a' | 'e' | 'i' | 'o' | 'u' -> true
      | _ -> false
    in
    let vowel_shift =
      match char with
      | 'a' -> 'c'
      | 'e' -> 'g'
      | 'i' -> 'k'
      | 'o' -> 'm'
      | 'u' -> 'p'
      | _ -> char
    in
    let new_char =
      if is_vowel then vowel_shift
      else if char >= 'a' && char <= 'z' then char + 1
      else char - 1
    in
    let rest = encode (String.sub message 1 (String.length message - 1)) in
    String.make 1 new_char ^ rest

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
