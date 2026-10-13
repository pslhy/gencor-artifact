let rec separate_paren_groups (paren_string : string) : string list =
    let paren_string = String.filter (fun c -> c <> ' ') paren_string in 
    let rec aux (paren_string : string) (group : string) (groups : string list) (nested : int) : string list =
        match String.length paren_string with
        | 0 -> List.rev (group :: groups)
        | _ -> begin
            let c = String.get paren_string 0 in
            let rest = String.sub paren_string 1 (String.length paren_string - 1) in
            match c with
            | '(' -> aux rest (group ^ c) groups (nested + 1)
            | ')' ->
                if nested > 1 then aux rest (group ^ c) groups (nested - 1)
                else aux rest "" (group :: groups) 0
            | _   -> aux rest group groups nested
        end
    in aux paren_string "" [] 0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input to this function is a string containing multiple groups of nested parentheses. Your goal is to *)
(*     separate those group into separate strings and return the list of those. *)
(*     Separate groups are balanced (each open brace is properly closed) and not nested within each other *)
(*     Ignore any spaces in the input string. *)
(*     >>> separate_paren_groups "( ) (( )) (( )( ))" *)
(*     ["()"; "(())"; "(()())"] *)
