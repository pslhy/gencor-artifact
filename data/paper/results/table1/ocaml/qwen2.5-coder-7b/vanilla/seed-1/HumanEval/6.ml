let rec parse_nested_parens (paren_string : string) : int list = 
  let rec parse_group (group : string) (depth : int) (max_depth : int) : int * int =
    match group with
    | "" -> max_depth, depth
    | '(' :: rest -> parse_group rest (depth + 1) (max (max_depth, depth))
    | ')' :: rest -> parse_group rest (depth - 1) max_depth
    | _ :: rest -> parse_group rest depth max_depth
  in
  let rec split_groups (groups : string) (acc : string list) : string list =
    match groups with
    | "" -> List.rev acc
    | ' ' :: rest -> split_groups rest []
    | _ :: rest -> split_groups rest (if acc = [] then [groups] else acc)
  in
  let groups = split_groups paren_string [] in
  List.map (fun group -> let _, max_depth = parse_group group 0 0 in max_depth) groups


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
