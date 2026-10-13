(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the upper case characters in a given string. *)
let rec upper_ctr (str : string) : int =
    match str with
    | "" -> 0
    | s -> if s.[0] >= 'A' && s.[0] <= 'Z' then 1 + upper_ctr (String.sub str 1 (String.length str - 1)) else 0 + upper_ctr (String.sub str 1 (String.length str - 1))

