let rec count_charac (str1 : string) : int =
match str1 with
| [] -> 0
| hd::tl -> 1 + count_charac tl


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the total number of characters in a string. *)
