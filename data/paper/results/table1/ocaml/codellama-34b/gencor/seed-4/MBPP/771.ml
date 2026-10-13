
let rec check_expression (exp : string) : bool = 
    (* First, we ignore any char that is not a parenthesis *)
    let expr = String.trim exp in
    (* Second, we check if there are no more parenthesis *)
    let rec check_parenthesis (expr : string) : bool =
        let open String in
        if length expr = 0 then
            true
        else
            let first_char = get expr 0 in
            let is_open_paren = first_char = '(' in
            let is_close_paren = first_char = ')' in
            is_open_paren || is_close_paren || check_parenthesis (sub expr 1 (length expr - 1))
    in
    check_parenthesis expr

let _ =
    assert(check_expression "a + (b * c)");
    assert(check_expression "((a + b) * (c + d))");
    assert(not (check_expression "a + b * c)"));
    assert(not (check_expression "(a + b) * (c + d)"));

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
