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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:18:8: Unbound value "String.of_list" *)
(*     Please regenerate the code, taking these errors into account. *)
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
    |> String.concat ""

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:23: Unbound value "String.find_first_of" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
    let alphabet = "abcdefghijklmnopqrstuvwxyz" in
    let shifted_alphabet = "cdefghijklmnopqrstuvwxyzab" in
    let find_first_of (c : char) : int =
        String.find_first_of shifted_alphabet c
    in
    String.fold_left (fun acc c ->
        match c with
        | 'a'..'z' ->
            let idx = find_first_of c in
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
    |> String.concat ""

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:9: Unbound value "String.find_first_of" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
    let alphabet = "abcdefghijklmnopqrstuvwxyz" in
    let shifted_alphabet = "cdefghijklmnopqrstuvwxyzab" in
    let rec find_first_of (c : char) : int =
        let i = ref 0 in
        while !i < String.length alphabet && alphabet.[!i] <> c do
            i := !i + 1
        done;
        if !i < String.length alphabet then !i else -1
    in
    String.fold_left (fun acc c ->
        match c with
        | 'a'..'z' ->
            let idx = find_first_of c in
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
    |> String.concat ""

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:16: Unbound value "Char.is_vowel" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec encode (message : string) : string =
    let alphabet = "abcdefghijklmnopqrstuvwxyz" in
    let shifted_alphabet = "cdefghijklmnopqrstuvwxyzab" in
    let rec find_first_of (c : char) : int =
        let i = ref 0 in
        while !i < String.length alphabet && alphabet.[!i] <> c do
            i := !i + 1
        done;
        if !i < String.length alphabet then !i else -1
    in
    let encode_char (c : char) : char =
        let idx = find_first_of c in
        let new_idx = (idx + 2) mod 26 in
        if Char.is_vowel c then
            shifted_alphabet.[new_idx]
        else
            c
    in
    String.map encode_char message

