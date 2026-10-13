(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
let rec check_expression (exp : string) : bool =
    if exp = "" then true
    else if exp.[0] = '(' || exp.[0] = '[' || exp.[0] = '{'
        then check_expression (String.sub exp 1 ((String.length exp) - 1))
    else if exp.[0] = ')'
        if exp.[1] = ']' || exp.[1] = '}' then check_expression (String.sub exp 2 ((String.length exp) - 2))
    else false
\end{code}
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_expression (exp : string) : bool =
    if exp = "" then true
    else if exp.[0] = '(' || exp.[0] = '[' || exp.[0] = '{'
        then check_expression (String.sub exp 1 ((String.length exp) - 1))
    else if exp.[0] = ')'
        then if exp.[1] = ']' || exp.[1] = '}'
            then check_expression (String.sub exp 2 ((String.length exp) - 2))
            else false
    else false

