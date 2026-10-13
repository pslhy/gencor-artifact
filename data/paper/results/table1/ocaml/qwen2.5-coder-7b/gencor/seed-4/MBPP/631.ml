
let rec replace_spaces (text : string) : string = 
  let rec helper chars acc = 
    match chars with 
    | [] -> List.rev acc 
    | ' ' :: xs -> helper xs ('_' :: acc) 
    | '_' :: xs -> helper xs (' ' :: acc) 
    | x :: xs -> helper xs (x :: acc) 
  in helper (String.to_seq text) []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)
