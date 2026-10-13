let rec separate_paren_groups (paren_string : string) : string list =
    match paren_string with
    | "" -> []
    | _  -> let (group, rest) = separate_one_group paren_string in
            group :: separate_paren_groups rest;;

let rec separate_one_group (paren_string : string) : string * string =
    match paren_string with
    | "" -> ("", "")
    | _  -> let (first, rest) = separate_first_group paren_string in
            let (next, rest') = separate_one_group rest in
            (first + next, rest');;

and separate_first_group (paren_string : string) : string * string =
    match paren_string with
    | "" -> ("", "")
    | _  when paren_string.[0] = ' ' -> separate_first_group (String.sub paren_string 1 (String.length paren_string - 1))
    | _  when paren_string.[0] = '(' -> let (inner, rest) = separate_first_group (String.sub paren_string 1 (String.length paren_string - 1)) in
                                    if paren_string.[1] = ')' then ("(" + inner + ")", String.sub rest 1 (String.length rest - 1))
                                    else ("(" + inner + separate_first_group rest)
    | _  -> ("", paren_string);;


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
