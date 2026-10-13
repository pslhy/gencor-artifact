let rec match_parens (lst : string list) : string = 
    let count_parentheses s =
        let rec loop acc s =
            match s with
            | '' -> acc
            | '(' -> loop (acc + 1) (String.sub s 1 (String.length s - 1))
            | ')' -> loop (acc - 1) (String.sub s 1 (String.length s - 1))
        in
        loop 0 s
    in
    let balance s1 s2 = 
        let count1 = count_parentheses s1 in
        let count2 = count_parentheses s2 in
        (count1 = 0 && count2 = 0) ||
        (count1 <= 0 && count2 >= 0 && count2 + count1 >= 0) ||
        (count2 <= 0 && count1 >= 0 && count1 + count2 >= 0)
    in
    match lst with
    | [s1; s2] -> if balance s1 s2 || balance s2 s1 then "Yes" else "No"
    | _ -> "No"


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
