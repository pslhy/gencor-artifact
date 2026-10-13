let rec remove_all_spaces (text : string) : string = 
    match text with 
    | "" -> ""
    | text -> text.[0] ^ remove_all_spaces (String.sub text 1 ((String.length text) - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from a string. *)
