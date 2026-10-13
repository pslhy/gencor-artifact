let rec remove_lowercase (str1 : string) : string = 
    let len = String.length str1 in 
    if len = 0 then 
        "" 
    else 
        let c1 = str1.[0] in 
        let sub = str1.[1..len-1] in 
        let is_lowercase = Char.is_lowercase c1 in 
        if is_lowercase then 
            " " ^ remove_lowercase sub 
        else 
            c1 ^ remove_lowercase sub 
    ;; 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
