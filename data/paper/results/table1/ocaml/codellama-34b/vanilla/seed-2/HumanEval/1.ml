let rec separate_paren_groups (paren_string : string) : string list =
    let open String in
    match split ~sep:"(" paren_string with
    | hd :: tl ->
        let (_, groups) = List.fold_left (fun (paren_count, groups) ele ->
            let paren_count' = paren_count + (count ~sub:"(" ele) in
            let paren_count' = paren_count' - (count ~sub:")" ele) in
            let groups' = if paren_count' = 0 && paren_count > 0 then groups@[ele] else groups in
            (paren_count', groups')
        ) (0, []) tl in
        if hd = "" then groups else hd :: groups
    | _ -> []


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
