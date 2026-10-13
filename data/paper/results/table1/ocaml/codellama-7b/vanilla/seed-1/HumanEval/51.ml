let rec remove_vowels (text : string) : string =
    match text with
    | "" -> ""
    | x :: xs when is_vowel x -> remove_vowels xs
    | x :: xs -> x :: remove_vowels xs
and is_vowel (c : char) : bool =
    match c with
    | 'a' | 'e' | 'i' | 'o' | 'u' -> true
    | _ -> false
;;


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
