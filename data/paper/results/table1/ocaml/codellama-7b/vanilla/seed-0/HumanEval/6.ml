let rec parse_nested_parens (paren_string : string) : int list =
  match paren_string with
  | "" -> []
  | '(' :: tail ->
    let num_open_parens = String.count tail '(' in
    let num_close_parens = String.count tail ')' in
    let tail_len = String.length tail in
    let tail_len_with_parens = tail_len - (num_open_parens - num_close_parens) in
    let tail_with_parens = String.sub tail ~pos:0 ~len:tail_len_with_parens in
    let next_level =
      if num_open_parens > num_close_parens
      then parse_nested_parens tail_with_parens
      else []
    in
    let curr_level = num_open_parens - num_close_parens in
    curr_level :: next_level
  | _ :: tail -> parse_nested_parens tail
;;


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
