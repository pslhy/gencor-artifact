(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:16: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
    let swap_case (c : char) : char =
        if c = Char.lowercase c then
            (* The error is here, because "Char.lowercase" is not a function,
               you need to remove the parentheses *)
            Char.lowercase c
        else
            Char.uppercase c
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
    String.map encode_char message

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:16: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
    let swap_case (c : char) : char =
        if c = Char.lowercase c then
            Char.lowercase c
        else
            Char.uppercase c
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
    String.map encode_char message

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:16: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
    let is_vowel c = List.mem c vowels in
    let swap_case c = if is_vowel c then Char.lowercase c else Char.uppercase c in
    let rec loop (c : char) (s : string) : string =
        if c = '\000' then
            s
        else
            let new_c = swap_case c in
            loop (Char.chr (Char.code new_c + 1)) (s ^ String.make 1 new_c)
    in
    loop ' ' message

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:42: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
    let is_vowel c = List.mem c vowels in
    let swap_case c = if is_vowel c then Char.chr (Char.code c + 32) else Char.chr (Char.code c - 32) in
    let rec loop (c : char) (s : string) : string =
        if c = '\000' then
            s
        else
            let new_c = swap_case c in
            loop (Char.chr (Char.code new_c + 1)) (s ^ String.make 1 new_c)
    in
    loop ' ' message

