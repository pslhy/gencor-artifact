let rec encode (message : string) : string = 
  let swap_case (c : char) : char =
    if Char.is_uppercase_ascii c then Char.lowercase_ascii c
    else Char.uppercase_ascii c
  in
  let replace_vowel (c : char) : char =
    match c with
    | 'a' -> 'C'
    | 'e' -> 'G'
    | 'i' -> 'K'
    | 'o' -> 'Q'
    | 'u' -> 'W'
    | 'A' -> 'C'
    | 'E' -> 'G'
    | 'I' -> 'K'
    | 'O' -> 'Q'
    | 'U' -> 'W'
    | _ -> c
  in
  let rec encode_char (i : int) : char =
    if i >= String.length message then '\000'
    else
      let c = message.[i] in
      let swapped = swap_case c in
      replace_vowel swapped
  in
  let rec encode_string (i : int) : string =
    if i >= String.length message then ""
    else
      let c = encode_char i in
      if c = '\000' then ""
      else (String.make 1 c) ^ (encode_string (i + 1))
  in
  encode_string 0


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
