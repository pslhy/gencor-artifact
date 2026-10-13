let rec parse_nested_parens (paren_string : string) : int list =
    let rec check_level (parens : string) (cur_level : int) : int =
        match parens with
        | "" -> 0
        | _ ->
            cur_level +
            (if parens.[0] = '(' then 1 else 0) -
            (if parens.[String.length parens - 1] = ')' then 1 else 0) +
            check_level (String.sub parens 1 (String.length parens - 2)) cur_level in
    let rec find_levels (groups : string list) (levels : int list) : int list =
        match groups with
        | [] -> List.rev levels
        | h::t -> find_levels t ((check_level h 0) :: levels) in
    find_levels (String.split_on_char ' ' paren_string) []


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
