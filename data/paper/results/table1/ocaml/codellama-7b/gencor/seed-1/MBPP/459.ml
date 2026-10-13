
let rec remove_uppercase (str1 : string) : string =
match str1 with
| [] -> []
| str1_head :: str1_tail ->
    let sub_str = remove_uppercase str1_tail in
    if str1_head = Char.uppercase_ascii (Char.chr 65) then sub_str else str1_head :: sub_str;;

let str = "HeLlO WoRlD!";;

remove_uppercase str;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
