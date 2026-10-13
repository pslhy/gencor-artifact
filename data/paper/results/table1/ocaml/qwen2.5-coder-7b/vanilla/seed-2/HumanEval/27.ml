let rec flip_case (string : string) : string = 
    let rec helper chars idx len result = 
        if idx = len then
            String.of_seq (List.rev result)
        else
            let char = string.[idx] in
            let new_char = 
                if char >= 'a' && char <= 'z' then
                    Char.uppercase_ascii char
                else if char >= 'A' && char <= 'Z' then
                    Char.lowercase_ascii char
                else
                    char
            in
            helper chars (idx + 1) len (new_char :: result)
    in
    helper (String.to_seq string) 0 (String.length string) []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
