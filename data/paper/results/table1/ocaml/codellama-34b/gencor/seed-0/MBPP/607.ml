
let rec find_literals (text : string) (pattern : string) :  string * int * int =
    if text = "" || pattern = "" then ("", -1, -1)
    else
        let pattern_length = String.length pattern in
        let start_index = String.index_from text pattern_length in
        let end_index = start_index + pattern_length - 1 in
        if start_index > 0 then
            (String.sub text start_index end_index, start_index, end_index)
        else
            find_literals (String.sub text 1 (String.length text - 1)) pattern

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
