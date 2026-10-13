let rec match_parens (lst : string list) : string =
  match lst with
  | [] -> "No"
  | hd :: tl ->
      let rec check_balance (str : string) (bal : int) : string =
        if bal < 0 then "No"
        else if str = "" && bal = 0 then "Yes"
        else
          match str.[0] with
          | '(' -> check_balance (String.sub str 1 (String.length str - 1)) (bal + 1)
          | ')' -> check_balance (String.sub str 1 (String.length str - 1)) (bal - 1)
          | _ -> check_balance (String.sub str 1 (String.length str - 1)) bal
      in
      check_balance hd 0


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
