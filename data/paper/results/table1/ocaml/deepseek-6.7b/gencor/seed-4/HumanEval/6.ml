
let rec parse_nested_parens (paren_string : string) : int list =
  let rec aux countList current_count = function
    | [] -> countList
    | '(' :: tl -> aux (max countList current_count) (current_count + 1) tl
    | ')' :: tl -> aux (max countList current_count) (current_count - 1) tl
    | _ :: tl -> aux countList countList tl
  in
  let grouped_strings = String.split_on_char ' ' paren_string in
  let counts = List.map (String.to_seq) grouped_strings |> List.map aux [0] 0 in
  counts

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
