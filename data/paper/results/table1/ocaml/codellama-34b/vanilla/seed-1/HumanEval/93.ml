let rec encode (message : string) : string =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
    let swap_case (c : char) : char =
        if c = Char.lowercase c then
            Char.uppercase c
        else
            Char.lowercase c
    in
    let vowel_transform (c : char) : char =
        match c with
        | 'a' -> 'c'
        | 'e' -> 'g'
        | 'i' -> 'k'
        | 'o' -> 's'
        | 'u' -> 'z'
        | _ -> c
    in
    let encode_char (c : char) : char =
        match c with
        | c when List.mem c vowels -> vowel_transform c
        | c when c = Char.lowercase c -> swap_case c
        | _ -> c
    in
    String.map encode_char message


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
