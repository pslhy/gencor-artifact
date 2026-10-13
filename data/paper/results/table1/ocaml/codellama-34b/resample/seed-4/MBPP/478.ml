(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
let rec remove_lowercase (str1 : string) : string = 
    (* base case: ignore empty string *)
    if String.length str1 = 0 then 
        ""
    else
        (* Remove all lowercases in the remaining string *)
        let ch = String.get str1 0 in
        if Char.lowercase ch = ch then 
            remove_lowercase (String.sub str1 1 (String.length str1 - 1))
        else 
            String.make 1 ch ^ remove_lowercase (String.sub str1 1 (String.length str1 - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:12: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_lowercase (str1 : string) : string =
    (* base case: ignore empty string *)
    if String.length str1 = 0 then
        ""
    else
        (* Remove all lowercases in the remaining string *)
        let ch = str1.[0] in
        if Char.lowercase (Char.code ch) = Char.code ch then
            remove_lowercase (String.sub str1 1 (String.length str1 - 1))
        else
            String.make 1 ch ^ remove_lowercase (String.sub str1 1 (String.length str1 - 1))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:12: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_lowercase (str1 : string) : string =
    (* base case: ignore empty string *)
    if String.length str1 = 0 then
        ""
    else
        (* Remove all lowercases in the remaining string *)
        let ch = str1.[0] in
        if ch = Char.lowercase_ascii ch then
            remove_lowercase (String.sub str1 1 (String.length str1 - 1))
        else
            String.make 1 ch ^ remove_lowercase (String.sub str1 1 (String.length str1 - 1))

