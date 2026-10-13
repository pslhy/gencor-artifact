(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to toggle the case of all characters in a string. *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:16: Unbound value "Char.is_lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_string (string : string) : string = 
    let rec helper chars result = 
        match chars with
        | [] -> result
        | c :: rest -> 
            if Char.lowercase_ascii c = c then
                helper rest (result ^ (String.make 1 (Char.uppercase_ascii c)))
            else
                helper rest (result ^ (String.make 1 (Char.lowercase_ascii c)))
    in
    helper (String.to_list string) ""

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:13: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec toggle_string (string : string) : string = 
    let rec helper chars result = 
        match chars with
        | [] -> result
        | c :: rest -> 
            if Char.lowercase_ascii c = c then
                helper rest (result ^ (String.make 1 (Char.uppercase_ascii c)))
            else
                helper rest (result ^ (String.make 1 (Char.lowercase_ascii c)))
    in
    helper (List.of_seq (String.to_seq string)) ""

