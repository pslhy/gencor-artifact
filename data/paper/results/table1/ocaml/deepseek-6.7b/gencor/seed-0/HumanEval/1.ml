
let rec separate_paren_groups (paren_string : string) : string list =
    let paren_string = String.trim paren_string in
    let string_len = String.length paren_string in
    if string_len = 0
    then
        []
    else
        match paren_string.[0] with
        | '(' ->
            let close_brace_location =
                let rec loop i left_count =
                    if i = string_len then
                        failwith "Unmatched open braces"
                    else if paren_string.[i] = '(' then
                        loop (i + 1) (left_count + 1)
                    else if paren_string.[i] = ')' then
                        if left_count = 1 then
                            i
                        else
                            loop (i + 1) (left_count - 1)
                    else
                        loop (i + 1) left_count
                in
                loop 1 0
            in
            let next_start = close_brace_location + 1 in
            paren_string.[0] :: separate_paren_groups (String.sub paren_string next_start (string_len - next_start))
        | _ ->
            separate_paren_groups (String.sub paren_string 1 (string_len - 1));;

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
