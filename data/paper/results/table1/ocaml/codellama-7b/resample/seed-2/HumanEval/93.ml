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
  match message with
  | "" -> ""
  | _ ->
    let char = String.get message 0 in
    let is_vowel =
      Utils.is_vowel char
    in
    let char' =
      if is_vowel then
        let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" in
        let index = alphabet |> String.index_from alphabet char 1 in
        alphabet |> String.get index
      else
        char |> Char.lowercase |> Char.uppercase
    in
    char' :: encode (String.sub message 1 (String.length message - 1))

and Utils.is_vowel char =
  let vowels = ["a"; "e"; "i"; "o"; "u"] in
  vowels |> List.exists (fun v -> v = String.make 1 char)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:19:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
  match message with
  | "" -> ""
  | _ ->
    let char = String.get message 0 in
    let is_vowel =
      Utils.is_vowel char
    in
    let char' =
      if is_vowel then
        let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" in
        let index = alphabet |> String.index_from alphabet char 1 in
        alphabet |> String.get index
      else
        char |> Char.lowercase |> Char.uppercase
    in
    char' :: encode (String.sub message 1 (String.length message - 1))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:7: Unbound module "Utils" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
  match message with
  | "" -> ""
  | _ ->
    let char = String.get message 0 in
    let is_vowel = char = 'A' || char = 'E' || char = 'I' ||
                          char = 'O' || char = 'U' in
    let char' =
      if is_vowel then
        char
      else
        char |> Char.lowercase |> Char.uppercase
    in
    char' :: encode (String.sub message 1 (String.length message - 1))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:35: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
  match message with
  | "" -> ""
  | _ ->
    let char = String.get message 0 in
    let is_vowel = char = 'A' || char = 'E' || char = 'I' ||
                          char = 'O' || char = 'U' in
    let char' =
      if is_vowel then
        char
      else
        Filename.basename (Char.uppercase char)
    in
    char' :: encode (String.sub message 1 (String.length message - 1))

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:28: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
  match message with
  | "" -> ""
  | _ ->
    let char = String.get message 0 in
    let is_vowel = char = 'A' || char = 'E' || char = 'I' ||
                          char = 'O' || char = 'U' in
    let char' =
      if is_vowel then
        char
      else
        char |> Char.uppercase
    in
    char' :: encode (String.sub message 1 (String.length message - 1))

