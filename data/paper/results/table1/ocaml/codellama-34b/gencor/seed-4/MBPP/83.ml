
let rec get_Char (strr : string) : string = 
    (* base case: If the string is empty, return 0 *)
    if (<)(valid_float_lexem strr[0]) then
        strr
    else 
        get_Char (strr[1..(String.length strr) - 1])|>`

The  `get_Char

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
