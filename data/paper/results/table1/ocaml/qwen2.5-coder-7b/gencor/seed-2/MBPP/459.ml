
let rec remove_uppercase (str1 : string) : string = 
    let rec find_uppercase_start idx = 
        if idx = String.length str1 then idx 
        else if Char.uppercase_ascii (String.unsafe_get str1 idx) then idx 
        else find_uppercase_start (idx + 1) 
    in 
    let rec remove_next_uppercase idx acc = 
        if idx = String.length str1 then acc 
        else 
            let start = find_uppercase_start idx in 
            if start = String.length str1 then acc ^ (String.sub str1 idx (String.length str1 - idx)) 
            else 
                let end_ = find_uppercase_start (start + 1) in 
                remove_next_uppercase end_ (acc ^ (String.sub str1 idx (end_ - idx))) 
    in 
    remove_next_uppercase 0 ""

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
