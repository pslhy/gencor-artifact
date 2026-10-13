let rec check_if_last_char_is_a_letter (txt : string) : bool = 
    (* Get the last character in the string and check if it is an alphabetical character *)
    let last_char = txt |> String.get (String.length txt - 1) in
    match last_char with
    | c when Char.is_alphabetical c ->
        (* If the last character is an alphabetical character, check if it is not part of a word *)
        let is_not_part_of_a_word = ref true in
        String.iter_backward (fun _ -> function
            | 'a'..'z' | 'A'..'Z' -> is_not_part_of_a_word := false
            | _ -> ()) txt;
        !is_not_part_of_a_word
    | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function that returns true if the last character *)
(*     of a given string is an alphabetical character and is not *)
(*     a part of a word, and false otherwise. *)
(*     Note: "word" is a group of characters separated by space. *)
(*     Examples: *)
(*     >>> check_if_last_char_is_a_letter "apple pie" *)
(*     false *)
(*     >>> check_if_last_char_is_a_letter "apple pi e" *)
(*     true *)
(*     >>> check_if_last_char_is_a_letter "apple pi e " *)
(*     false *)
(*     >>> check_if_last_char_is_a_letter "" *)
(*     false *)
