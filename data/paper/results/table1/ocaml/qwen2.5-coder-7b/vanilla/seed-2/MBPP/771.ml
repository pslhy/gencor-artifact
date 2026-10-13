let rec check_expression (exp : string) : bool = 
    let rec helper stack idx = 
        if idx = String.length exp then
            stack = []
        else
            match exp.[idx] with
            | '(' | '[' | '{' -> helper (exp.[idx] :: stack) (idx + 1)
            | ')' -> 
                if stack = [] || stack.[0] <> '(' then
                    false
                else
                    helper (List.tl stack) (idx + 1)
            | ']' -> 
                if stack = [] || stack.[0] <> '[' then
                    false
                else
                    helper (List.tl stack) (idx + 1)
            | '}' -> 
                if stack = [] || stack.[0] <> '{' then
                    false
                else
                    helper (List.tl stack) (idx + 1)
            | _ -> helper stack (idx + 1)
    in
    helper [] 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
