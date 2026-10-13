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
  let rec balance s count = 
    match s with 
    | "" -> count = 0
    | '(' :: xs -> balance xs (count + 1)
    | ')' :: xs -> if count > 0 then balance xs (count - 1) else false
  in
  let balance_first = balance (List.hd lst) 0 in
  let balance_second = balance (List.hd (List.tl lst)) 0 in
  if balance_first && balance_second then "Yes"
  else if balance_first && (balance (List.tl (List hd lst)) 0) then "Yes"
  else if balance_second && (balance (List.hd lst) 0) then "Yes"
  else "No"

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:55: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec match_parens (lst : string list) : string = 
  let rec balance s count = 
    match s with 
    | "" -> count = 0
    | '(' :: xs -> balance xs (count + 1)
    | ')' :: xs -> if count > 0 then balance xs (count - 1) else false
  in
  let balance_first = balance (List.hd lst) 0 in
  let balance_second = balance (List.hd (List.tl lst)) 0 in
  if balance_first && balance_second then "Yes"
  else if balance_first && (balance (List.tl (List.hd lst)) 0) then "Yes"
  else if balance_second && (balance (List.hd lst) 0) then "Yes"
  else "No"

