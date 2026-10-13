let rec check_expression (exp : string) : bool =
    match exp with
    | [] | [_] -> false
    | h :: t ->
        let (open_count, close_count) = count_parens h in
        if open_count = close_count && open_count = 0 then
            true
        else
            check_expression t

and count_parens (ch : char) : (int * int) =
    match ch with
    | '(' -> (1, 0)
    | ')' -> (0, 1)
    | _ -> (0, 0)

let test_expression exp : unit =
    match check_expression exp with
    | true -> print_endline "The expression is balanced"
    | false -> print_endline "The expression is not balanced"

let () =
    test_expression "(())";
    test_expression "(()";
    test_expression "(()))";
    test_expression "(()))";
    test_expression "((((((";
    test_expression "(((((())))";
    test_expression "((((())))";
    test_expression "((((())";
    test_expression "(()())";
    test_expression "(()(()";
    test_expression "(()")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
