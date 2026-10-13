let rec check_expression (exp : string) : bool = 
  let rec helper (stack : char list) (exp : string) : bool = 
    match exp with
    | "" -> List.length stack = 0
    | '(' :: rest -> helper ('(' :: stack) rest
    | ')' :: rest -> 
      if stack = [] then false
      else helper (List.tl stack) rest
    | _ :: rest -> helper stack rest
  in
  helper [] exp


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
