let rec check_expression (exp : string) : bool =
  let stack = Stack.create () in
  let push_or_pop bracket =
    try
      if bracket = ')' && Stack.top stack = '(' then Stack.pop stack
      else if bracket = '}' && Stack.top stack = '{' then Stack.pop stack
      else if bracket = ']' && Stack.top stack = '[' then Stack.pop stack
      else Stack.push bracket
    with Stack.Empty -> Stack.push bracket
  in
  String.iter push_or_pop exp;
  Stack.is_empty stack


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
