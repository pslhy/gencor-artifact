let rec check_expression (exp : string) : bool = 
  let rec check (stack : char list) (index : int) : bool = 
    if index = String.length exp then
      List.length stack = 0
    else
      match exp.[index] with
      | '(' | '{' | '[' -> check (exp.[index] :: stack) (index + 1)
      | ')' -> 
          (match stack with
          | [] -> false
          | top :: rest when top = '(' -> check rest (index + 1)
          | _ -> false)
      | '}' -> 
          (match stack with
          | [] -> false
          | top :: rest when top = '{' -> check rest (index + 1)
          | _ -> false)
      | ']' -> 
          (match stack with
          | [] -> false
          | top :: rest when top = '[' -> check rest (index + 1)
          | _ -> false)
      | _ -> check stack (index + 1)
  in
  check [] 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
