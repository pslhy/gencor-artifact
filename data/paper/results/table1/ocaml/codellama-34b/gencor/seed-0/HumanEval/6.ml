
let rec parse_nested_parens (paren_string : string) : int list =
    let rec parse_level (paren_string : string) (level : int) : int =
        if paren_string = "" then level else
        if paren_string.[0] = ' ' then parse_level paren_string.[1..(String.length paren_string - 1)] level else
        if paren_string.[0] = '(' then parse_level paren_string.[1..(String.length paren_string - 1)] (level + 1) else
        if paren_string.[0] = ')' then parse_level paren_string.[1..(String.length paren_string - 1)] (level - 1)
    in
    let rec parse_levels (paren_string : string) (levels : int list) : int list =
        if paren_string = "" then levels else
        let level = parse_level paren_string 0 in
        parse_levels (String.trim paren_string) (level :: levels)
    in
    parse_levels paren_string []

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
