let rec replace_spaces (text : string) : string = 
    match text with 
    | "" -> ""
    | ' ' :: tail -> "_" ^ replace_spaces tail 
    | _ :: tail -> text.[0] :: replace_spaces tail 

let rec replace_underscores (text : string) : string = 
    match text with 
    | "" -> ""
    | ' ' :: tail -> "_" ^ replace_underscores tail 
    | _ :: tail -> text.[0] :: replace_underscores tail 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)
