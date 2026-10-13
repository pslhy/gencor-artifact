let rec separate_paren_groups (paren_string : string) : string list =
  let paren_chars = List.filter (fun c -> c = '(' || c = ')') @@ (String.to_list paren_string) in
  let _, paren_groups = separate_paren_groups_helper [] [] paren_chars in
  paren_groups

and separate_paren_groups_helper (stack : char list) (acc : string list) (chars : char list) : (char list * string list) =
  match chars with
  | '(' :: xs -> separate_paren_groups_helper (')' :: stack) acc xs
  | ')' :: xs -> (match stack with
                   | _ :: xs' -> separate_paren_groups_helper xs' acc xs
                   | [] -> ([], acc))
  | [] -> (stack, List.rev (if List.length stack = 0 then acc else acc))
  | _ :: xs -> separate_paren_groups_helper stack acc xs


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
