(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Input to this function is a string represented multiple groups for nested parentheses separated by spaces. *)
(*     For each of the group, output the deepest level of nesting of parentheses. *)
(*     E.g. (()()) has maximum two levels of nesting while ((())) has three. *)
(*     >>> parse_nested_parens "(()()) ((())) () ((())()())" *)
(*     [2; 3; 1; 3] *)
let rec parse_nested_parens (paren_string : string) : int list =
  let rec aux countList current_count = function
    | [] -> countList
    | '(' :: tl -> aux (max countList current_count) (current_count + 1) tl
    | ')' :: tl -> aux (max countList current_count) (current_count - 1) tl
    | _ :: tl -> aux countList countList tl
  in
  let grouped_strings = Str.split (Str.regexp " ") paren_string in
  List.map (fun g -> List.length g - String.length (String.trim g)) grouped_strings

let test = parse_nested_parens "(()()) ((())) () ((())()())"

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:25: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec parse_nested_parens (paren_string : string) : int list =
  let rec aux countList current_count = function
    | [] -> countList
    | '(' :: tl -> aux (max countList current_count) (current_count + 1) tl
    | ')' :: tl -> aux (max countList current_count) (current_count - 1) tl
    | _ :: tl -> aux countList countList tl
  in
  let grouped_strings = String.split_on_char ' ' paren_string in
  List.map (fun g -> List.length g - String.length (String.trim g)) grouped_strings

let test = parse_nested_parens "(()()) ((())) () ((())()())"

