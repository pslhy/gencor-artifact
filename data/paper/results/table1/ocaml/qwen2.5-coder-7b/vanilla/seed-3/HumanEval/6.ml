let rec parse_nested_parens (paren_string : string) : int list = 
  let rec helper s depth max_depth =
    if s = "" then max_depth
    else
      let ch = s.[0] in
      if ch = '(' then
        helper (String.sub s 1 (String.length s - 1)) (depth + 1) (max max_depth (depth + 1))
      else if ch = ')' then
        helper (String.sub s 1 (String.length s - 1)) (depth - 1) max_depth
      else
        helper (String.sub s 1 (String.length s - 1)) depth max_depth
  in
  let rec split_and_process s acc =
    if s = "" then List.rev acc
    else
      let space_pos = String.index s ' ' in
      split_and_process (String.sub s (space_pos + 1) (String.length s - space_pos - 1))
        ((helper (String.sub s 0 space_pos) 0 0) :: acc)
  in
  split_and_process paren_string []


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
