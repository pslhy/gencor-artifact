(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Input to this function is a string represented multiple groups for nested parentheses separated by spaces. *)
(*     For each of the group, output the deepest level of nesting of parentheses. *)
(*     E.g. (()()) has maximum two levels of nesting while ((())) has three. *)
(*     >>> parse_nested_parens "(()()) ((())) () ((())()())" *)
(*     [2; 3; 1; 3] *)
let rec parse_nested_parens (paren_string : string) : int list =
    let open String in
    let rec parse_parens (depth : int) (paren_string : string) : int * string =
        if length paren_string = 0 then (depth, paren_string)
        else
            let paren_count = ref 0 in
            for i = 0 to length paren_string - 1 do
                match get paren_string i with
                | "(" -> incr paren_count
                | ")" ->
                    if !paren_count = 0 then (depth, paren_string)
                    else decr paren_count
                | _ -> ()
            done;
            (depth + !paren_count, drop paren_count paren_string)
    in
    match split_on_char ' ' paren_string with
    | [] -> []
    | group :: groups ->
        let (depth, remaining) = parse_parens 0 group in
        depth :: parse_nested_parens remaining

