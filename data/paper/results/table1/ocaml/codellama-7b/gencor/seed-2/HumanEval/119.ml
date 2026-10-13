
let rec match_parens (lst : string list) : string =
    match lst with
    | [] -> "No"
    | [x] -> if x.[0] = '(' && x.[1] = ')' then "Yes" else failwith "Invalid input"
    | x :: y :: rst ->
        if x.[0] = '(' && y.[0] = ')' then match_parens (x :: rst)
        else if x.[0] = ')' && y.[0] = '(' then match_parens (y :: rst)
        else failwith "Invalid input"
        in
    match_parens ["()("; ")"]
;;

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
