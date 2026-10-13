
let rec check_expression (exp : string) : bool =
    if exp = "" then true
    else if exp.[0] = '(' || exp.[0] = '[' || exp.[0] = '{'
        then check_expression (String.sub exp 1 ((String.length exp) - 1))
    else if exp.[0] = ')'
        then check_expression (String.sub exp 1 ((String.length exp) - 1))
    else if exp.[0] = ']'
        then check_expression (String.sub exp 1 ((String.length exp) - 1))
    else if exp.[0] = '}'
        then check_expression (String.sub exp 1 ((String.length exp) - 1))
    else if exp.[0] = '|'
        then let (open_count, close_count) = check_expression (String.sub exp 1 ((String.length exp) - 1))
             in (open_count + 1, close_count)
    else if exp.[0] = '&'
        then let (open_count, close_count) = check_expression (String.sub exp 1 ((String.length exp) - 1))
             in (open_count, close_count + 1)
    else (0, 0)

let is_balanced (exp : string) : bool =
    let (open_count, close_count) = check_expression exp
    in open_count = close_count

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
