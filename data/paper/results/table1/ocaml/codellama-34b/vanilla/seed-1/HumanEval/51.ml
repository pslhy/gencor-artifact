let rec remove_vowels (text : string) : string =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
    let contains_vowel (c : char) : bool = List.mem c vowels in
    let rec helper (text : string) (acc : string) : string =
        match text with
        | [] -> acc
        | h :: t -> if contains_vowel h then helper t acc else helper t (acc ^ (String.make 1 h))
    in
    helper text ""


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
