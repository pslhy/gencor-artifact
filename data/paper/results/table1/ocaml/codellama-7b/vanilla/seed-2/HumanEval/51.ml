let rec remove_vowels (text : string) : string =
  match text with
  | "" -> ""
  | _ ->
      let is_vowel c =
        let open Char in
        match c with
        | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' -> true
        | _ -> false
      in
      match String.split_on_char text with
      | "" -> ""
      | _ ->
          let last_char = String.get text (String.length text - 1) in
          let new_text = String.sub text 0 (String.length text - 1) in
          if is_vowel last_char then
            remove_vowels new_text
          else
            last_char ^ remove_vowels new_text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     remove_vowels is a function that takes string and returns string without vowels. *)
(*     >>> remove_vowels "" *)
(*     "" *)
(*     >>> remove_vowels "abcdef" *)
(*     "bcdf" *)
(*     >>> remove_vowels "aaaaa" *)
(*     "" *)
(*     >>> remove_vowels "aaBAA" *)
(*     "B" *)
(*     >>> remove_vowels "zbcd" *)
(*     "zbcd" *)
