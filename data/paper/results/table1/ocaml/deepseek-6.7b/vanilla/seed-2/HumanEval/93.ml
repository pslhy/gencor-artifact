let rec encode (message : string) : string =
  let rec substitute c =
    match c with
    | 'a' -> 'c'
    | 'e' -> 'g'
    | 'i' -> 'k'
    | 'o' -> 'q'
    | 'u' -> 'w'
    | 'A' -> 'C'
    | 'E' -> 'G'
    | 'I' -> 'K'
    | 'O' -> 'Q'
    | 'U' -> 'W'
    | _ -> c
  in
  let rec loop (m : string) (i : int) : string =
    if i < String.length m then
      (String.sub m 0 i ^ substitute (String.sub m i 1) ^ loop m (i + 1))
    else
      m
  in
  loop message 0;;


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
