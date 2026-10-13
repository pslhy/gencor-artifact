(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
let rec remove_lowercase (str1 : string) : string =
    match str1 with
    | "" -> ""
    | str1 when str1.[0] >= 'a' && str1.[0] <= 'z' -> remove_lowercase (str1.sub(1))
    | str1 -> str1.[0] :: remove_lowercase (str1.sub(1))

