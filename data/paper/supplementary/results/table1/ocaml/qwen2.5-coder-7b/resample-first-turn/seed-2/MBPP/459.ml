let rec remove_uppercase (str1 : string) : string = 
    let rec find_uppercase_start idx = 
        if idx = String.length str1 then idx 
        else if Char.is_uppercase (String.get str1 idx) then idx 
        else find_uppercase_start (idx + 1)
    in
    let rec remove idx acc = 
        if idx = String.length str1 then acc 
        else 
            let upper_start = find_uppercase_start idx in 
            let (new_acc, new_idx) = 
                if upper_start = idx then 
                    (acc ^ String.sub str1 idx 1, idx + 1) 
                else (acc, upper_start) 
            in 
            remove new_idx new_acc
    in
    remove 0 ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
