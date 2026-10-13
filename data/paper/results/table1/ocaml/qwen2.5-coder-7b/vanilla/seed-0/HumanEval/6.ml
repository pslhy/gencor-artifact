let rec parse_nested_parens (paren_string : string) : int list = 
  let rec parse_group group max_depth current_depth = 
    match group with 
    | '' -> max_depth
    | '(' -> parse_group (String.sub group 1 ((String.length group) - 1)) 
                          (max max_depth (current_depth + 1)) (current_depth + 1)
    | ')' -> parse_group (String.sub group 1 ((String.length group) - 1)) 
                          max_depth (current_depth - 1)
    | _ -> parse_group (String.sub group 1 ((String.length group) - 1)) max_depth current_depth
  in
  let rec get_max_depths remaining_strings = 
    match remaining_strings with
    | "" -> []
    | group :: rest -> 
      let depth = parse_group group 0 0 in
      depth :: get_max_depths rest
  in
  get_max_depths (String.split_on_char ' ' paren_string)


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
