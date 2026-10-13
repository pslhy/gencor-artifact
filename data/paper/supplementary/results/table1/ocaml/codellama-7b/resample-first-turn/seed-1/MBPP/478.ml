let rec remove_lowercase (str1 : string) : string =
match str1 with
| [] -> []
| str1.[0] :: tail -> if Char.is_lowercase str1.[0] then remove_lowercase str1.tail else str1.[0] :: remove_lowercase str1.tail

let remove_lowercase (str2 : string) : string option =
match str2 with
| [] -> None
| str2.[0] :: tail -> if Char.is_lowercase str2.[0] then Some (remove_lowercase str2.tail) else Some str2.[0] :: remove_lowercase str2.tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
