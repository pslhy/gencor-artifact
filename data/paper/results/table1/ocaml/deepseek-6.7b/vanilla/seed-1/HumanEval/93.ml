let rec encode (message : string) : string =
    let vowel_to_replace = function
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
        | _ -> Char.lowercase_ascii
    in
    let rec encode_char = function
        | c when Char.lowercase_ascii c = c -> Char.uppercase_ascii c
        | c when Char.uppercase_ascii c = c -> Char.lowercase_ascii c
        | c -> vowel_to_replace c
    in
    String.map encode_char message

let () =
    assert(encode "test" = "tGST");
    assert(encode "This is a message" = "tHKS KS C MGSSCGG")


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
