let rec remove_parenthesis (items : string list) : string =
    match items with
    | [] -> ""
    | h::t when h = "(" -> remove_parenthesis t
    | h::t when h = ")" -> remove_parenthesis t
    | h::t -> h ^ remove_parenthesis t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove the parenthesis and what is inbetween them from a string. *)
