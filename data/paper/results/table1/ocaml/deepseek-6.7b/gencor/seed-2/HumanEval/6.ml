
let rec parse_nested_parens (paren_string : string) : int list =
  let rec rank_string current_rank current_pos max_rank =
    match String.index_from_opt paren_string current_pos '(' with
    | Some pos -> 
        let max_rank, current_rank = if current_rank > max_rank then current_rank, max_rank else max_rank, current_rank in
        let max_rank, current_rank = rank_string (current_rank + 1) (pos + 1) max_rank in
        rank_string current_rank (pos + 1) max_rank
    | None -> max_rank, current_rank - 1 in 
  
  let groups = String.split_on_char ' ' paren_string in
  List.map rank_string 1 0 groups

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
