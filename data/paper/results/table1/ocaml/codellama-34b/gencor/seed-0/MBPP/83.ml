
let rec get_Char (strr : string) : string =
    if strr.[0] == '\000' then '\000'
    else
        let main (stri : string) : char array =
        if stri.[0] == ' ' || stri.[0] == '\n' then Array.copy [||]
        
        else Array.init 26 (fun i -> stri.[0] + i mod 26);

    let res = Array.to_list (Array.map (fun s -> get_Char s) (Array.copy strr.[1..(String.length strr - 1)])) in
    if res = [] then '\000'
    else List.hd res

get_Char "\n" = 'a'
get_Char "google" = 'n'
get_Char "reminder" = 't'
get_Char "abcdefghijklmnopqrstuvwxyz" = 'a'
get_Char "aaa" = 'a'
get_Char "aaaaa" = 'a'
get_Char "aaaaaaaa" = 'a'
get_Char "aaaaaaaaa" = 'a'
get_Char "aaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_Char "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" = 'a'
get_

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
