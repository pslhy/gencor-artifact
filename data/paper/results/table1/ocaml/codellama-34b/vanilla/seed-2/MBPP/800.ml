let rec remove_all_spaces (text : string) : string =
    match text with
    | [] -> []
    | h :: t ->
        if h = ' '
        then remove_all_spaces t
        else h :: remove_all_spaces t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from a string. *)
