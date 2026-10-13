(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec remove_vowels (text : string) : string =
    match text with
    | "" -> ""
    | _ ->
        let vowels = ['a'; 'e'; 'i'; 'o'; 'u']
        let hd = text.[0]
        if List.exists (fun c -> c = hd) vowels
        then remove_vowels (String.sub text 1 ((String.length text) - 1))
        else hd :: remove_vowels (String.sub text 1 ((String.length text) - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_vowels (text : string) : string =
    match text with
    | [] -> []
    | hd :: tl ->
        let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
        if List.exists (fun c -> c = hd) vowels
        then remove_vowels tl
        else hd :: remove_vowels tl

