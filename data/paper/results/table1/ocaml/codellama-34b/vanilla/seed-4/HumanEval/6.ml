let rec parse_nested_parens (paren_string : string) : int list = 
    let open String in
    let rec parse_level (paren_string : string) (current_level : int) (max_level : int) : int = 
        match paren_string with
        | "" -> max_level
        | _ -> 
            let (left, right) = split paren_string " " in 
            let next_level = parse_level left (current_level + 1) max_level in 
            let current_level = if next_level > max_level then next_level else max_level in 
            parse_level right current_level current_level 
    in 
    parse_level paren_string 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input to this function is a string represented multiple groups for nested parentheses separated by spaces. *)
(*     For each of the group, output the deepest level of nesting of parentheses. *)
(*     E.g. (()()) has maximum two levels of nesting while ((())) has three. *)
(*     >>> parse_nested_parens "(()()) ((())) () ((())()())" *)
(*     [2; 3; 1; 3] *)
