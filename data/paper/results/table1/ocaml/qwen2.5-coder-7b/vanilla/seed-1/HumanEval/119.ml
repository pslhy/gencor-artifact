let rec match_parens (lst : string list) : string = 
  let rec check_balance (s : string) (bal : int) : bool =
    if bal < 0 then false
    else if s = "" then bal = 0
    else match s.[0] with
         | '(' -> check_balance (String.sub s 1 (String.length s - 1)) (bal + 1)
         | ')' -> check_balance (String.sub s 1 (String.length s - 1)) (bal - 1)
  in
  match lst with
  | [a; b] -> if check_balance a 0 || check_balance b 0
            then "Yes"
            else if check_balance (a ^ b) 0 || check_balance (b ^ a) 0
            then "Yes"
            else "No"
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
