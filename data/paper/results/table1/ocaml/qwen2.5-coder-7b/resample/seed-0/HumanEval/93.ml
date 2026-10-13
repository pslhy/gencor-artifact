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
  let vowels = "aeiouyAEIOUY" in
  let shift_vowel (v : char) : char =
    match v with
    | 'a' -> 'c'
    | 'e' -> 'g'
    | 'i' -> 'k'
    | 'o' -> 'q'
    | 'u' -> 'w'
    | 'y' -> 'a'
    | 'A' -> 'C'
    | 'E' -> 'G'
    | 'I' -> 'K'
    | 'O' -> 'Q'
    | 'U' -> 'W'
    | 'Y' -> 'A'
    | _ -> v
  in
  let swap_case (c : char) : char =
    if Char.is_uppercase c then Char.lowercase c
    else Char.uppercase c
  in
  let encode_char (c : char) : char =
    if String.contains vowels c then shift_vowel c
    else swap_case c
  in
  String.map encode_char message

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:20:8: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string = 
  let vowels = "aeiouyAEIOUY" in
  let shift_vowel (v : char) : char =
    match v with
    | 'a' -> 'c'
    | 'e' -> 'g'
    | 'i' -> 'k'
    | 'o' -> 'q'
    | 'u' -> 'w'
    | 'y' -> 'a'
    | 'A' -> 'C'
    | 'E' -> 'G'
    | 'I' -> 'K'
    | 'O' -> 'Q'
    | 'U' -> 'W'
    | 'Y' -> 'A'
    | _ -> v
  in
  let swap_case (c : char) : char =
    match c with
    | 'a' .. 'z' -> Char.uppercase c
    | 'A' .. 'Z' -> Char.lowercase c
    | _ -> c
  in
  let encode_char (c : char) : char =
    if String.contains vowels c then shift_vowel c
    else swap_case c
  in
  String.map encode_char message

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:21:21: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string = 
  let vowels = "aeiouyAEIOUY" in
  let shift_vowel (v : char) : char =
    match v with
    | 'a' -> 'c'
    | 'e' -> 'g'
    | 'i' -> 'k'
    | 'o' -> 'q'
    | 'u' -> 'w'
    | 'y' -> 'a'
    | 'A' -> 'C'
    | 'E' -> 'G'
    | 'I' -> 'K'
    | 'O' -> 'Q'
    | 'U' -> 'W'
    | 'Y' -> 'A'
    | _ -> v
  in
  let swap_case (c : char) : char =
    let diff = if 'a' <= c && c <= 'z' then 'a' - 'A' else 0 in
    Char.unsafe_char (Char.code c + diff)
  in
  let encode_char (c : char) : char =
    if String.contains vowels c then shift_vowel c
    else swap_case c
  in
  String.map encode_char message

