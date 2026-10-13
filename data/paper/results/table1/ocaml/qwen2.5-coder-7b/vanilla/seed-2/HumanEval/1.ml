let rec separate_paren_groups (paren_string : string) : string list = 
    let rec parse_brackets (chars : char list) (stack : char list) (current : string) (result : string list) : string list * string =
        match chars with
        | [] -> 
            (if current <> "" then (List.rev (current::result)) else result)
        | '('::rest -> 
            parse_brackets rest ('('::stack) (current ^ "(") result
        | ')'::rest -> 
            if stack = [] then 
                parse_brackets rest stack ")" result
            else
                let stack' = List.tl stack in
                parse_brackets rest stack' (current ^ ")") result
        | _::rest -> 
            parse_brackets rest stack (current ^ (String.make 1 (List.hd chars))) result
    in
    let clean_string = String.filter (fun ch -> ch <> ' ') paren_string in
    let char_list = String.to_list clean_string in
    let result = parse_brackets char_list [] "" [] in
    result


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
