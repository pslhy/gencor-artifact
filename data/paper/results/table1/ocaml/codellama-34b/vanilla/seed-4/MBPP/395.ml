let rec first_non_repeating_character (str1 : string) : string option = 
    (* Iterate through each character and search for its occurence in the remaining string *)
    match str1 with 
    | "" -> None
    | c -> 
        let str2 = str1.[1..] in 
        if List.for_all (fun c' -> c' <> c) str2 
        then Some c 
        else first_non_repeating_character str2 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
