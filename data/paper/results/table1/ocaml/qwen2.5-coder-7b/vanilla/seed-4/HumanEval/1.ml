let rec separate_paren_groups (paren_string : string) : string list = 
  let rec helper chars groups current =
    match chars with
    | [] -> List.rev ((List.rev current) :: groups)
    | ' ' :: rest -> helper rest groups current
    | '(' :: rest -> helper rest groups (current @ ['('])
    | ')' :: rest ->
        let current' = current @ [')'] in
        if List.mem '(' current' then
          helper rest groups (List.rev current' :: [])
        else
          helper rest groups ((List.rev current') :: groups)
  in
  helper (String.to_seq paren_string |> Seq.toList) [] []


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
