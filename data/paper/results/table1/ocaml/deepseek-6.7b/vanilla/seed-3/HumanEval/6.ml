let rec parse_nested_parens (paren_string : string) : int list =
  let rec helper (acc : int list) (level : int) (s : string) : int list =
    match s with
    | "" -> acc
    | s ->
      let new_level = 
        if String.get s 0 = '(' then level + 1 else level in
      let new_acc =
        if level > List.hd acc then [new_level] else
        if level = List.hd acc then new_level :: acc else acc in
      helper new_acc new_level (String.sub s 1 (String.length s - 1))
  in helper [0] 0 paren_string;;


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
