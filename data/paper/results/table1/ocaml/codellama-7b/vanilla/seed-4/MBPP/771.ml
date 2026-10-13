let rec check_expression (exp : string) : bool = 
    (* Check if the expression is empty *)
    if exp = "" then true
    (* Check if the expression starts with a left bracket *)
    else if String.get exp 0 = '(' || String.get exp 0 = '[' || String.get exp 0 = '{' then
        (* Check if the expression ends with the matching right bracket *)
        if String.get exp (String.length exp - 1) = ')' || String.get exp (String.length exp - 1) = ']' || String.get exp (String.length exp - 1) = '}' then
            (* Recursively check the balance for the substring between the brackets *)
            check_expression (String.sub exp 1 (String.length exp - 2))
        else false
    (* Check if the expression starts with a right bracket *)
    else if String.get exp 0 = ')' || String.get exp 0 = ']' || String.get exp 0 = '}' then false
    (* Check if the expression is empty *)
    else if exp = "" then false
    else check_expression (String.sub exp 1 (String.length exp - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
