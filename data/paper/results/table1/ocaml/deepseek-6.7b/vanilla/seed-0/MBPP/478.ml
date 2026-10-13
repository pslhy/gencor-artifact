let rec remove_lowercase (str1 : string) : string =
    if str1 = "" then ""
    else if String.length str1 = 1 then
             if String.lowercase_ascii str1 = str1 then str1
             else ""
    else
             let first_char = String.get str1 0 in
             let rest_of_str = String.sub str1 1 (String.length str1 - 1) in
             let rest_of_filtered_str = remove_lowercase rest_of_str in
                if String.lowercase_ascii str1 = str1 then rest_of_str
                else if first_char = first_char then first_char ^ rest_of_filtered_str
                else rest_of_filtered_str

let test1 = remove_lowercase "HelLO"
let test2 = remove_lowercase "hElLoWORLD"
let test3 = remove_lowercase "hElLoWORLDwitHaAnyCaPs"
let test4 = remove_lowercase "UPPERCASED"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
