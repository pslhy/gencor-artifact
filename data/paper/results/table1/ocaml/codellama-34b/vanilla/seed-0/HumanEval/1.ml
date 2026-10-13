let rec separate_paren_groups (paren_string : string) : string list =
    let rec parse_group (acc : string list) (paren_string : string) : string list =
        if String.length paren_string = 0 then
            acc
        else if paren_string.[0] = '(' then
            let _, rest = String.split_on_char '(' paren_string in
            parse_group ((String.sub paren_string 1 (String.length paren_string - 1)) :: acc) rest
        else
            parse_group acc paren_string in
    parse_group [] paren_string


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
