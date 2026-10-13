let rec first_repeated_char (str1 : string) : string option =
match str1 with
| s when s.length = 1 -> None
| s when s.[0] = s.[1] -> Some (s.[0])
| s -> first_repeated_char (String.sub str1 2 (str1.length - 2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
