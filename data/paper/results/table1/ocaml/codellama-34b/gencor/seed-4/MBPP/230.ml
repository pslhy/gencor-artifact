
let rec replace_blank (str1 : string) (char : string) : string = 
    (* base case: if the string is empty, return the character *)
    if str1 = "" then char
    else
        (* if the first character is blank, replace it with the character *)
        let str2 = if Char.code str1.[0] = Char.code ' ' then char
        else str1.[0]
        (* recursively call replace_blank on the remaining character *)
        in str2 ^ replace_blank str1.[1..(String.length str1 - 1)] char

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string. *)
