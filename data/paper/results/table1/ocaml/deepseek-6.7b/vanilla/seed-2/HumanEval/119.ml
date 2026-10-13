let rec match_parens (lst : string list) : string =
  match lst with
  | [] -> "No"
  | _ -> let str = List.hd lst in
    let rest = List.tl lst in
    if check_balance str then "Yes"
    else match_parens rest

and check_balance (str : string) : bool =
  let rec helper (str : string) (count : int) : bool =
    if count < 0 then false
    else
      match str with
      | "" -> count = 0
      | _ -> let hd = String.get str 0 in
        let tl = String.sub str 1 (String.length str - 1) in
        if hd ='(' then helper tl (count + 1)
        else if hd = ')' then helper tl (count - 1)
        else helper tl count
  in helper str 0


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
