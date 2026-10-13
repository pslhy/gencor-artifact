let rec parse_nested_parens (paren_string : string) : int list =
  let open String in
  match split_on_char ' ' paren_string with
  | [] -> []
  | paren_group :: groups ->
    let level = parse_paren_group paren_group in
    level :: parse_nested_parens (concat groups)
and parse_paren_group paren_group =
  let count_open_parens str =
    String.count str '('
  in
  let count_close_parens str =
    String.count str ')'
  in
  let rec inner_parse level str =
    match str with
    | "" -> level
    | '(' :: rest -> inner_parse (level + 1) rest
    | ')' :: rest -> inner_parse (level - 1) rest
    | _ :: rest -> inner_parse level rest
  in
  let open_parens = count_open_parens paren_group in
  let close_parens = count_close_parens paren_group in
  if open_parens = close_parens then
    inner_parse 0 paren_group
  else
    failwith "Invalid parenthesis string"


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
