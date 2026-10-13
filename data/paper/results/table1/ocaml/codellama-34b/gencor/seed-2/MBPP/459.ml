
let rec remove_uppercase (str1 : string) : string =
    match str1 with
    | "" -> ""
    | str1 when Char.code str1.[0] >= 65 && Char.code str1.[0] <= 90 ->
        remove_uppercase (String.sub str1 1 ((String.length str1) - 1))
    | str1 -> str1.[0] ^ (remove_uppercase str1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
