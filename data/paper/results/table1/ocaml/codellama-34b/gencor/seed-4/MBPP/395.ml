
let rec first_non_repeating_character (str1 : string) : string option = 
    (* Iterate through each character and search for its occurence in the remaining string *)
    match str1 with 
    | "" -> None
    | c -> 
        let str2 = str1.[1..((String.length str1)-1)] in
        let occurences = String.split_on_char c str2 |> List.length in
        if occurences = 0 then Some c
        else None

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
