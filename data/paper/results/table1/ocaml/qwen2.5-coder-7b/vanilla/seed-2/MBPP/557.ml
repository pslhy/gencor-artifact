let rec toggle_string (string : string) : string = 
    let rec helper chars result = 
        match chars with
        | [] -> result
        | c :: rest -> 
            if Char.is_lowercase c then
                helper rest (result ^ (String.make 1 (Char.uppercase_ascii c)))
            else
                helper rest (result ^ (String.make 1 (Char.lowercase_ascii c)))
    in
    helper (String.to_list string) ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
