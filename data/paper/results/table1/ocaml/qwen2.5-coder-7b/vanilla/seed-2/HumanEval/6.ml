let rec parse_nested_parens (paren_string : string) : int list = 
    let rec parse_group (group : string) (depth : int) (max_depth : int) : int * int =
        match group with
        | [] -> (max_depth, depth)
        | '(' :: rest -> parse_group rest (depth + 1) (max (max_depth) (depth + 1))
        | ')' :: rest -> parse_group rest (depth - 1) max_depth
        | _ :: rest -> parse_group rest depth max_depth
    in
    let rec split_groups (groups : string list) : string list =
        match groups with
        | [] -> []
        | group :: rest -> 
            let rec split_group (group : string) (acc : string) : string * string =
                match group with
                | '' when String.length acc > 0 -> (acc, "")
                | ' ' when String.length acc > 0 -> (acc, String.trim group)
                | ' ' -> split_group (String.trim group) acc
                | _ -> split_group (String.trim group) (acc ^ group)
            in
            let (current_group, remaining_groups) = split_group group "" in
            let parsed_group, _ = parse_group current_group 0 0 in
            current_group :: split_groups (remaining_groups :: rest)
    in
    let groups = split_groups (String.split_on_char ' ' paren_string) in
    List.map (fun g -> snd (parse_group g 0 0)) groups


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
