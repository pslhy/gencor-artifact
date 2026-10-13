
let rec match_parens (lst : string list) : string =
  if lst = [] then "No"
  else if lst = [(""); ""] then "Yes"
  else
    let rec loop (acc : string) (l : string list) : string =
      if l = [] then acc
      else
        let str = List.hd l in
        let acc = acc ^ str in
        if not (valid_float_lexem acc) then "No"
        else loop acc (List.tl l)
    in
    loop "" lst

let valid_float_lexem (s : string) : bool =
  let rec loop (s : string) (i : int) : bool =
    if i >= String.length s then true
    else
      let c = s.[i] in
      if c = '(' || c = ')' then loop s (i + 1)
      else false
  in
  loop s 0

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
