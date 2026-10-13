let rec parse_nested_parens (paren_string : string) : int list =
  let strip_outer_parens (paren_string : string) : string =
    let left_paren_index = String.index paren_string '(' in
    let left_paren_index_next = left_paren_index + 1 in
    let right_paren_index = String.rindex paren_string ')' in
    let right_paren_index_prev = right_paren_index - 1 in
    String.sub paren_string left_paren_index_next (right_paren_index - left_paren_index_next)
  in
  let rec parse_inner_parens (paren_string : string) (nesting_level : int) =
    if String.length paren_string = 0 then
      []
    else
      match String.index_opt paren_string '(' with
      | Some open_paren_index ->
        let close_paren_index = String.rindex_from paren_string open_paren_index ')' in
        (nesting_level + 1) :: parse_inner_parens (String.sub paren_string (close_paren_index + 1) (String.length paren_string - close_paren_index - 1)) (nesting_level + 1)
      | _ ->
        [nesting_level]
  in
  parse_inner_parens (strip_outer_parens paren_string) 0

let _ =
  assert (parse_nested_parens "()()" = [1]);
  assert (parse_nested_parens "((()))" = [2]);
  assert (parse_nested_parens "((())(()))" = [3; 2]);
  assert (parse_nested_parens "(())(()()())" = [2; 2; 1])


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
