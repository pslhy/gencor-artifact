let rec remove_uppercase (str1 : string) : string =
match str1 with
| [] -> []
| str1.[0] :: _ when String.contains str1.[0] 'A' && String.contains str1.[0] 'Z' -> (str1.[1] :: str1)
| str1.[0] :: str1' -> (str1.[0] :: remove_uppercase (str1'.[1] :: str1))

let test_string = "Hello, World!";;
let result = remove_uppercase test_string;;
print_endline result;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
