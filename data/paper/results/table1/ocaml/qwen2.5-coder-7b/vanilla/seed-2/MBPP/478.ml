let rec remove_lowercase (str1 : string) : string = 
    let rec find_non_lowercase_start idx = 
        if idx = String.length str1 || str1.[idx] >= 'A' && str1.[idx] <= 'Z' then idx
        else find_non_lowercase_start (idx + 1)
    in
    let rec remove_at pos s =
        if pos >= String.length s then s
        else String.sub s 0 pos ^ String.sub s (pos + 1) (String.length s - pos - 1)
    in
    if String.length str1 = 0 then str1
    else 
        let start = find_non_lowercase_start 0 in
        if start = String.length str1 then str1
        else 
            let non_lowercase_part = remove_at start str1 in
            remove_lowercase non_lowercase_part


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
