let rec parse_nested_parens (paren_string : string) : int list =
  let len = String.length paren_string in
  if len = 0 then []
  else
    let rec aux i acc =
      if i >= len then List.rev acc
      else
        match paren_string.[i] with
        | '(' -> aux (i + 1) (acc + 1)
        | ')' -> aux (i + 1) (acc - 1)
        | _ -> aux (i + 1) acc
    in
    let level = aux 0 0 in
    level :: parse_nested_parens (String.sub paren_string 0 (len - 1))

let parse_nested_parens (paren_string : string) : int list =
  let len = String.length paren_string in
  if len = 0 then []
  else
    let rec aux i acc =
      if i >= len then List.rev acc
      else
        match paren_string.[i] with
        | '(' -> aux (i + 1) (acc + 1)
        | ')' -> aux (i + 1) (acc - 1)
        | _ -> aux (i + 1) acc
    in
    let level = aux 0 0 in
    level :: parse_nested_parens (String.sub paren_string 0 (len - 1))


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
