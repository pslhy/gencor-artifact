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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:15: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec match_parens (lst : string list) : string =
  match lst with
  | [] -> "Yes"
  | h :: t ->
    if is_good_str h then
      match_parens t
    else
      "No"

and is_good_str (str : string) : bool =
  let stack = Str.make 0 '(' in
  let push (stack : string) (x : char) : string =
    if x = ')' then
      stack ^ ")"
    else
      stack ^ "("
  in
  let rec balance (stack : string) (s : string) : bool =
    match s with
    | "" -> true
    | _ when stack = "" -> false
    | '(' :: rest -> balance (push stack '(') rest
    | ')' :: rest ->
      if stack = "" then
        false
      else
        balance (pop stack) rest
  in
  match String.to_seq str with
  | Seq.Cons (x,xs) -> balance (push Str.make 0 '(' x) xs

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:15: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec match_parens (lst : string list) : string =
  match lst with
  | [] -> "Yes"
  | h :: t ->
    if is_good_str h then
      match_parens t
    else
      "No"

and is_good_str (str : string) : bool =
  let stack = Array.make 0 '(' in
  let push (stack : char array) (x : char) : unit =
    if x = ')' then
      Array.push stack ')'
    else
      Array.push stack '('
  in
  let rec balance (stack : char array) (s : string) : bool =
    match s with
    | "" -> true
    | _ when Array.is_empty stack -> false
    | '(' :: rest -> balance (push stack '(') rest
    | ')' :: rest ->
      if Array.is_empty stack then
        false
      else
        balance (Array.slice stack 1 (Array.length stack)) rest
  in
  match String.to_seq str with
  | Seq.Cons (x,xs) -> balance stack xs

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:7: Unbound value "Array.push" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec match_parens (lst : string list) : string =
  match lst with
  | [] -> "Yes"
  | h :: t ->
    if is_good_str h then
      match_parens t
    else
      "No"

and is_good_str (str : string) : bool =
  let stack = Array.make 0 '(' in
  let push (stack : char array) (x : char) : unit =
    if x = ')' then
      Array.push stack ')'
    else
      Array.push stack '('
  in
  let rec balance (stack : char array) (s : string) : bool =
    match s with
    | "" -> true
    | _ when Array.is_empty stack -> false
    | '(' :: rest -> balance (push stack '(') rest
    | ')' :: rest ->
      if Array.is_empty stack then
        false
      else
        balance (Array.sub stack 1 (Array.length stack - 1)) rest
  in
  match String.to_seq str with
  | Seq.Cons (x,xs) -> balance stack xs

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:7: Unbound value "Array.push" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec match_parens (lst : string list) : string =
  match lst with
  | [] -> "Yes"
  | h :: t ->
    if is_good_str h then
      match_parens t
    else
      "No"

and is_good_str (str : string) : bool =
  let stack = (Array.make 0 '(' : char array) in
  let rec push (stack : char array) (x : char) : unit =
    if x = ')' then
      Array.push stack ')'
    else
      Array.push stack '('
  in
  let rec balance (stack : char array) (s : string) : bool =
    match s with
    | "" -> true
    | _ when Array.is_empty stack -> false
    | '(' :: rest -> balance (push stack '(') rest
    | ')' :: rest ->
      if Array.is_empty stack then
        false
      else
        balance (Array.sub stack 1 (Array.length stack - 1)) rest
  in
  match String.to_seq str with
  | Seq.Cons (x,xs) -> balance stack xs

