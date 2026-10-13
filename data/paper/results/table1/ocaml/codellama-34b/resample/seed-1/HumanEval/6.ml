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
    let rec parse_group (level : int) (group : string) : int =
        match group with
        | "" -> level
        | "(" :: rest -> parse_group (level + 1) rest
        | ")" :: rest -> parse_group (level - 1) rest
        | _ -> raise (Invalid_argument "Invalid input")
    in
    paren_string
    |> Str.split (Str.regexp " ")
    |> List.map (fun group -> parse_group 0 group)

