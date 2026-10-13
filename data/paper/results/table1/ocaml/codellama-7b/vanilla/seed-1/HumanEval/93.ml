let rec encode (message : string) : string =
  let vowels = ["a"; "e"; "i"; "o"; "u"] in
  let swap_case c =
    if 'A' <= c && c <= 'Z' then c + 32 else c - 32
  in
  let substitute_vowel c =
    match List.mem c vowels with
    | true -> List.nth vowels (List.length vowels - String.contains c - 2)
    | false -> c
  in
  String.map2 swap_case message |>
  String.map substitute_vowel


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
