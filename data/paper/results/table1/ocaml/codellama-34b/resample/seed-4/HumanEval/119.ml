(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You are given a list of two strings, both strings consist of open *)
(*     parentheses '(' or close parentheses ')' only. *)
(*     Your job is to check if it is possible to concatenate the two strings in *)
(*     some order, that the resulting string will be good. *)
(*     A string S is considered to be good if and only if all parentheses in S *)
(*     are balanced. For example: the string '(())()' is good, while the string *)
(*     '())' is not. *)
(*     Return 'Yes' if there's a way to make a good string, and return 'No' otherwise. *)
(*     Examples: *)
(*     >>> match_parens ["()("; ")"] *)
(*     "Yes" *)
(*     >>> match_parens [")"; ")"] *)
(*     "No" *)
let rec match_parens (lst : string list) : string = 
    let open_parens = ref 0 in
    let close_parens = ref 0 in
    lst |> List.iter (fun s ->
        s |> String.iter (fun c ->
            if c = '(' then
                incr open_parens
            else if c = ')' then
                incr close_parens
        )
    );
    if !open_parens = !close_parens then
        "Yes"
    else
        "No"

