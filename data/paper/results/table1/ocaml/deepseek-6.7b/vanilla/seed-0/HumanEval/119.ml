let rec match_parens (lst : string list) : string =
    match lst with
    | [] -> "No"
    | hd :: tl ->
        let rec balance (str : string) (openP : int) : bool =
            if str = "" then openP = 0
            else
                match str.[0] with
                | '(' -> balance (String.sub str 1 (String.length str - 1)) (openP + 1)
                | ')' -> if openP > 0 then balance (String.sub str 1 (String.length str - 1)) (openP - 1)
                         else false
                | _ -> balance (String.sub str 1 (String.length str - 1)) openP
        in
        if balance hd 0 then
            match_parens tl
        else
            match tl with
            | [] -> "No"
            | nhd :: ntl ->
                if balance hd 0 then
                    match_parens (ntl @ [nhd])
                else
                    "No"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
