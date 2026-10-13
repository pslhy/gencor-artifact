let rec separate_paren_groups (paren_string : string) : string list = 
  let rec helper parentheses groups current_group =
    match parentheses with
    | [] -> 
        if current_group = "" then groups else groups @ [current_group]
    | '(' :: rest ->
        helper rest groups (current_group ^ "(")
    | ')' :: rest ->
        if current_group = "" then helper rest groups current_group
        else helper rest (groups @ [current_group ^ ")"]) ""
    | ' ' :: rest -> helper rest groups current_group
    | _ :: rest -> helper rest groups current_group
  in
  helper (List.of_seq (String.to_seq paren_string)) [] ""


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
