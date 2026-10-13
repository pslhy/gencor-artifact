let rec encode (message : string) : string =
  let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
  let upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" in
  let lower = "abcdefghijklmnopqrstuvwxyz" in
  let swap c =
    if List.mem c vowels then
      match c with
      | 'a' -> 'e'
      | 'e' -> 'i'
      | 'i' -> 'o'
      | 'o' -> 'u'
      | 'u' -> 'a'
      | _ -> c
    else
      match c with
      | 'A' -> 'E'
      | 'E' -> 'I'
      | 'I' -> 'O'
      | 'O' -> 'U'
      | 'U' -> 'A'
      | _ -> c
  in
  String.map swap message;;


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
