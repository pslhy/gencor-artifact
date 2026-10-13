
let rec parse_nested_parens (paren_string : string) : int list = 
    let open String in
    let rec parse_level (paren_string : string) (current_level : int) (max_level : int) : int = 
        match paren_string with
        | "" -> max_level
        | _ -> 
            let (left, right) = split_on_char ' ' paren_string in
            let current_level = if left = "(" then current_level + 1 else current_level in
            let max_level = if current_level > max_level then current_level else max_level in
            parse_level right current_level max_level
    in
    let rec parse_groups (paren_string : string) : int list = 
        match paren_string with
        | "" -> []
        | _ -> 
            let (group, rest) = split_on_char ' ' paren_string in
            parse_level group 0 0 :: parse_groups rest
    in
    parse_groups paren_string;;

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
