let rec parse_nested_parens (paren_string : string) : int list =
  let rec helper level nesting max_nesting paren_string =
    match paren_string with
    | [] -> max_nesting
    | '(' :: rest -> helper (level + 1) (nesting + 1) max_nesting rest
    | ')' :: rest ->
        if nesting - 1 = level
        then helper (level - 1) nesting max_nesting rest
        else helper level (nesting - 1) (max max_nesting (level + 1)) rest
    | _ -> failwith "Invalid parenthesis"
  in
  let groups = String.split_on_chars [' '] paren_string in
  List.map
    (fun group ->
       let nesting = helper 0 0 0 group in
       let deepest_level = List.fold_left (fun acc x -> acc + 1) 0 nesting in
       deepest_level)
    groups


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
