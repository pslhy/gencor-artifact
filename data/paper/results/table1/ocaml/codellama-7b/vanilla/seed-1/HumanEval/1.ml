let rec separate_paren_groups (paren_string : string) : string list =
  let is_balanced s =
    let rec inner (s, counter) =
      match s with
      | "" -> counter = 0
      | '('::t -> inner (t, counter + 1)
      | ')'::t -> inner (t, counter - 1)
      | _::t -> inner (t, counter)
    in
    inner (s, 0)
  in
  let rec split_on_nested_parens (paren_string, acc) =
    match paren_string with
    | "" -> List.rev acc
    | s when is_balanced s ->
      split_on_nested_parens ("", (s :: acc))
    | s ->
      let open_bracket_index = String.index_from s 0 '(' in
      let closing_bracket_index =
        String.rindex paren_string ')' + 1
      in
      let prefix = String.sub paren_string 0 open_bracket_index in
      let suffix =
        String.sub paren_string closing_bracket_index (String.length s - closing_bracket_index)
      in
      split_on_nested_parens (prefix, (s :: acc))
  in
  split_on_nested_parens (paren_string, [])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input to this function is a string containing multiple groups of nested parentheses. Your goal is to *)
(*     separate those group into separate strings and return the list of those. *)
(*     Separate groups are balanced (each open brace is properly closed) and not nested within each other *)
(*     Ignore any spaces in the input string. *)
(*     >>> separate_paren_groups "( ) (( )) (( )( ))" *)
(*     ["()"; "(())"; "(()())"] *)
