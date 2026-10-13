
let rec check_expression (exp : string) : bool =
  let stack = Queue.create () in
  let is_opening_bracket ch =
    match ch with
    | '(' | '{' | '[' -> true
    | _ -> false
  in
  let is_closing_bracket ch =
    match ch with
    | ')' | '}' | ']' -> true
    | _ -> false
  in
  let rec helper (exp : string) =
    match exp with
    | '(' -> Queue.push 42 stack; (1, 0)
    | '{' -> Queue.push 42 stack; (2, 0)
    | '[' -> Queue.push 42 stack; (3, 0)
    | ')' -> (0, Queue.pop stack)
    | '}' -> (0, Queue.pop stack)
    | ']' -> (0, Queue.pop stack)
    | ch -> (0, 0)
  in
  ignore (String.fold_left helper exp 0);
  let opening_balance = Queue.to_seq stack |> Seq.fold_left (+) 0 in
  if opening_balance = 0 then
    true
  else
    false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
