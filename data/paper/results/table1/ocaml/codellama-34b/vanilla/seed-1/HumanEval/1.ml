let rec separate_paren_groups (paren_string : string) : string list =
    let rec aux paren_string result =
        let (l, r), rest = String.split_at paren_string in
        if l = ")" then
            if r = "(" then
                (String.init (String.length paren_string + 1) (fun i -> if i % 2 = 0 then "(" else ")")) :: result
            else
                "" :: result
        else
            aux rest (String.init (String.length paren_string - 1) (fun i -> if i % 2 = 0 then l else r))
    in
    aux paren_string []


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
