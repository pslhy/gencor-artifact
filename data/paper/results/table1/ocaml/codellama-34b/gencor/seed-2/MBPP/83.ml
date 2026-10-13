
let rec get_Char (strr : string) : string =
    match strr with
        | [] -> "" 
        | h::t -> h ^ get_Char t

let rec add_ascii (strr : string) : int =
    match strr with
        | [] -> 0 
        | h::t -> int_of_char(h) + add_ascii t

let find_char (strr : string) : char = 
    let ascii = add_ascii(strr) mod 26 in
    Char.chr ascii

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
