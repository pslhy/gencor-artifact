let rec remove_vowels (text : string) : string =
  match text with
  | "" -> ""
  | _ ->
    let is_vowel (c : char) : bool =
      match c with
      | 'a' | 'e' | 'i' | 'o' | 'u' -> true
      | _ -> false
    in
    if is_vowel (String.get text 0) then
      remove_vowels (String.sub text 1 (String.length text - 1))
    else
      String.sub text 0 1 ^ (remove_vowels (String.sub text 1 (String.length text - 1)))


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
