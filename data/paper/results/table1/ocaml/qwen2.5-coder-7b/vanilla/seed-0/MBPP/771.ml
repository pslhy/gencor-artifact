let rec check_expression (exp : string) : bool = 
  let rec helper stack i = 
    if i = String.length exp then 
      Stack.is_empty stack 
    else 
      match exp.[i] with 
      | '(' -> helper (Stack.push '(' stack) (i + 1) 
      | ')' -> 
        if Stack.is_empty stack then 
          false 
        else 
          helper (Stack.pop stack) (i + 1) 
      | _ -> helper stack (i + 1) 
  in 
  helper Stack.empty 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
