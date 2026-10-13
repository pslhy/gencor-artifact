(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from a string. *)
let rec remove_all_spaces (text : string) : string = 
    let text_length = String.length(text) in
    if text_length == 0 then
        ""
    else
        let first_char = text.[0] in
        if first_char == ' ' then
            remove_all_spaces(String.sub(text, 1, text_length - 1))
        else
            String.make 1 first_char ^ remove_all_spaces(String.sub(text, 1, text_length - 1))

