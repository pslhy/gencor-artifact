
let rec encode (message : string) : string =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
    let swap_case (c : char) : char =
        if c = Char.lowercase_ascii then Char.uppercase_ascii else Char.lowercase_ascii in
    let shift (c : char) : char =
        match c with
        | 'a' -> 'c'
        | 'e' -> 'g'
        | 'i' -> 'k'
        | 'o' -> 's'
        | 'u' -> 'A'
        | _ -> c in
    let rec helper (message : string) (index : int) : string =
        if index = String.length message - 1 then
            String.make 1 (shift (message.[index]))
        else
            String.make 1 (swap_case (message.[index])) ^
            (if vowels @ message.[index] then
                String.make 1 (shift (message.[index]))
             else
                String.make 1 (message.[index])) in
    helper message 0

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
