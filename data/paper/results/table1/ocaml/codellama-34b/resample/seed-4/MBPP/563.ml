(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
let rec extract_values (text : string) : string list = 
    (*
     * Find the first occurrence of a quotation mark in `text`.
     * If none is found, return the empty list.
     * Otherwise, extract the value between quotation marks,
     * add it to the result list, and recursively call the function
     * on the remaining text.
     *)
    match String.index_opt text '"' with
    | None -> []
    | Some index -> 
        let value = String.sub text (index + 1) (String.rindex text '"' - index - 1) in
        value :: extract_values (String.sub text (index + 1) (String.length text - index - 1))

