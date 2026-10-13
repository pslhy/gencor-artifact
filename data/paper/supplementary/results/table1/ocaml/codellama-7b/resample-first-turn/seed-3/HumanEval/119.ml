let rec match_parens (lst : string list) : string =
  match lst with
  | [] -> "Yes"
  | h :: t ->
    if is_good_str h then
      match_parens t
    else
      "No"
and is_good_str (str : string) : bool =
  let stack = Str.split_delim (Str.regexp_string "'") in
  let push (stack : 'a Stack.t) (x : 'a) : 'a Stack.t =
    Stack.push x stack
  in
  let pop (stack : 'a Stack.t) : 'a option =
    Stack.pop stack
  in
  let rec balance (stack : 'a Stack.t) (s : string) : bool =
    match s with
    | [] -> true
    | _ when Stack.is_empty stack -> false
    | '(' :: rest -> balance (push stack '(') rest
    | ')' :: rest ->
      if Stack.is_empty stack then
        false
      else
        balance (pop stack) rest
  in
  match String.to_seq str with
  | Seq.Cons (x,xs) -> balance (push (push Stack.empty x) x) xs

let main () =
  let (str1, str2) = (List.hd lst, List.nth lst 1) in
  let str = str1 ^ str2 in
  if is_good_str str then
    match_parens (str :: List.tl lst)
  else
    "No"

let () = main ()


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
