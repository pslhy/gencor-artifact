(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)
let rec replace_spaces (text : string) : string =
    match text with
    | [] -> []
    | ' ' :: rest -> '_' :: replace_spaces rest
    | _ :: rest -> ' ' :: replace_spaces rest

