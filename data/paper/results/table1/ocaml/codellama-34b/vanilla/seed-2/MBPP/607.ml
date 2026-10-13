let rec find_literals (text : string) (pattern : string) :  string * int * int =
    let pattern_len = String.length pattern in
    let text_len = String.length text in
    let rec find_match (start_index : int) :  int option =
        if start_index > text_len - pattern_len then
            None
        else
            let substring = String.sub text start_index pattern_len in
            if String.equal substring pattern then
                Some start_index
            else
                find_match (start_index + 1)
    in
    match find_match 0 with
    | Some index -> (pattern, index, index + pattern_len)
    | None -> ("", -1, -1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
