
let rec replace_char (str1 : string) (ch : string) (newch : string) : string = 
    (* base case: if the string is empty, return an empty string *)
    if str1 = "" then ""
    else
        (* find the first character in str2 that matches ch *)
        let rec find_match str2 = 
            if str2 = "" then "" 
            else if str2.[0] = ch.[0] then str2.[0] else find_match str2.[1..(String.length str2)-1]
        in
        (* replace the first character in str1 that matches ch with newch *)
        let str3 = find_match str1 in 
        if str3 = "" then str1 else str1.[0] = newch

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace characters in a string. *)
