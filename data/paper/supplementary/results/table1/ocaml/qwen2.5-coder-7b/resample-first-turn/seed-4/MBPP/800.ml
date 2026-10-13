let rec remove_all_spaces (text : string) : string = 
  let rec helper chars = 
    match chars with 
    | [] -> []
    | ' ' :: rest -> helper rest
    | char :: rest -> char :: helper rest
  in 
  String.blit_to_string (helper (String.to_seq text)) 0 text 0 (String.length text)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from a string. *)
