
let rec reverse_vowels (str1 : string) : string =
    match str1 with
    | "" -> ""
    | str1 ->
        let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
        let first = str1.[0] in
        let rest = str1.[1..(String.length str1 - 1)] in
        if List.mem first vowels then
            reverse_vowels rest ^ String.make 1 first
        else
            first ^ reverse_vowels rest

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse only the vowels of a given string (where y is not a vowel). *)
