(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)
let rec replace_spaces (text : string) : string = 
    (* Replace all whitespaces in the given string with an 
    underscore and vice versa. *)
    match text with
    | [] -> []
    | h :: t when h = ' ' -> '_' :: replace_spaces t
    | h :: t when h = '_' -> ' ' :: replace_spaces t
    | h :: t -> h :: replace_spaces t

