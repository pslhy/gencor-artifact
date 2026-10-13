let rec encode (message : string) : string =
    let vowels = "aeiouAEIOU" in
    let rec helper (m : string) (acc : string) : string =
        match m with
        | "" -> acc
        | s when String.contains vowels s ->
              let newChar =
                  if Char.uppercase_ascii s.[0] = s.[0] then
                      char_of_int (int_of_char s.[0] + 2)
                  else
                      char_of_int (int_of_char s.[0] + 2 - 32)
              in
              helper (String.sub m 1 (String.length m - 1)) (acc ^ Char.escaped newChar)
        | s -> helper (String.sub m 1 (String.length m - 1)) (acc ^ String.uppercase_ascii s)
    in
    helper message ""


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
