let rec encode (message : string) : string = 
    (* helper function that encodes with the logic you describe *)
    let rec encode_helper (message : char list) : char list = 
        match message with
        | [] -> []
        | c :: rest -> 
            (* get the index of c in the alphabet, 
               then add 2 and wrap around if necessary *)
            let index = (Char.to_int c + 2) mod 26 
            (* get the character at index and convert it back to a string *)
            let encoded_char = Char.chr index in
            encoded_char :: (encode_helper rest)
    in 
    (* call the helper function and convert the result back to a string *)
    message
    |> String.to_list
    |> encode_helper 
    |> String.of_list
;;


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
