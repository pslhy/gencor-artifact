let rec encode (message : string) : string =
    let alphabet = "abcdefghijklmnopqrstuvwxyz" in
    let shifted_alphabet = "cdefghijklmnopqrstuvwxyzab" in
    String.fold_left (fun acc c ->
        match c with
        | 'a'..'z' ->
            let idx = String.find_first_of alphabet c in
            let new_c = shifted_alphabet.[idx] in
            if Char.is_vowel new_c then
                let new_idx = (idx + 2) mod 26 in
                new_c :: acc
            else
                new_c :: acc
        | _ ->
            acc
    ) [] message
    |> List.rev
    |> String.of_list


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
