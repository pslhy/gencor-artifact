
let rec remove_uppercase (str1 : string) : string = 
    let len = String.length str1 in 
    if len = 0 then 
        "" 
    else 
        let c1 = str1.[0] in 
        let sub = str1.[1..(len-1)] in
            if Char.uppercase_ascii c1 >= 65 && Char.uppercase_ascii c1 <= 90 then 
                remove_uppercase sub 
            else 
                c1 ^ remove_uppercase sub

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
