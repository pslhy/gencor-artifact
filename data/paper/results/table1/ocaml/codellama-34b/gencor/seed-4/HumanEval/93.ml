
let rec encode (message : string) : string = 
    (* helper function that encodes with the logic you describe *)
    let rec encode_helper (message : char list) : char list = 
        match message with
        | [] -> []
        | c :: rest -> 
            (* get the index of c in the alphabet, 
               then add 2 and wrap around if necessary *)
            let index = (Char.code c - 97 + 2) mod 26 + 97 in
            (* get the character at the new index *)
            let swap_case = Char.chr index in
            (* is this a vowel? *)
            if ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') then 
                (* add 2 to the index and wrap around if necessary *)
                Char.chr (index + 2) :: encode_helper rest
            else 
                (* not a vowel, just encode the character at the new index *)
                swap_case :: encode_helper rest
    in
    (* encode the message and convert it back to a string *)
    String.of_seq (encode_helper (String.to_seq message))

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
