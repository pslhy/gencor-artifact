let rec encode (message : string) : string = 
    let open Batteries in
    let char_map (c : char) : char = 
        let char_pos = Char.code c
        if char_pos >= 97 && char_pos <= 122 then (* lowercase *)
            let vowel_pos =
                match char_pos with
                | 97 | 101 | 105 | 111 | 117 => char_pos + 2
                | _ => char_pos
            in
            Char.chr vowel_pos
        else if char_pos >= 65 && char_pos <= 90 then (* uppercase *)
            let vowel_pos =
                match char_pos with
                | 65 | 69 | 73 | 79 | 85 => char_pos + 2
                | _ => char_pos
            in
            Char.chr vowel_pos
        else
            c
    in
    String.map char_map message


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
