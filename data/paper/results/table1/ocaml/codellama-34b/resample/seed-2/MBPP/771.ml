(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:33:26: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_expression (exp : string) : bool =
    match exp with
    | [] | [_] -> false
    | '(' :: t ->
        let (open_count, close_count) = count_parens t in
        if open_count = close_count && open_count = 0 then
            true
        else
            check_expression t
    | ')' :: t ->
        let (open_count, close_count) = count_parens t in
        if open_count = close_count + 1 then
            check_expression t
    | _ :: t -> check_expression t

let count_parens (exp : string) : (int * int) =
    let rec loop (exp : string) (open_count, close_count) =
        match exp with
        | [] -> (open_count, close_count)
        | '(' :: t -> loop t (open_count + 1, close_count)
        | ')' :: t -> loop t (open_count, close_count + 1)
        | _ :: t -> loop t (open_count, close_count)
    in
    loop exp (0, 0)

let rec check_expression (exp : string) : bool =
    match exp with
    | [] | [_] -> false
    | '(' :: t ->
        let (open_count, close_count) = count_parens t in
        if open_count = close_count && open_count = 0 then
            true
        else
            check_expression t
    | ')' :: t ->
        let (open_count, close_count) = count_parens t in
        if open_count = close_count + 1 then
            check_expression t
    | _ :: t -> check_expression t

let test_expression exp : unit =
    if check_expression exp then
        print_endline "The expression is balanced"
    else
        print_endline "The expression is not balanced"

let () =
    test_expression "(()()())";
    test_expression "(()";
    test_expression "((()))";
    test_expression "(()))";
    test_expression "((((((";
    test_expression "(((())))";
    test_expression "((((())))";
    test_expression "((((())";
    test_expression "(()(()";
    test_expression "(()")

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:57:26: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_expression (exp : string) : bool =
    match exp with
    | [] | [_] -> false
    | '(' :: _ ->
        let (open_count, close_count) = count_parens exp in
        if open_count = close_count && open_count = 0 then
            true
        else
            check_expression (List.tl exp)
    | _ -> false

let count_parens (exp : string) : (int * int) =
    let rec loop (exp : string) (open_count, close_count) =
        match exp with
        | [] -> (open_count, close_count)
        | '(' :: t -> loop t (open_count + 1, close_count)
        | ')' :: t -> loop t (open_count, close_count + 1)
        | _ -> loop exp (open_count, close_count)
    in
    loop exp (0, 0)

let rec check_expression (exp : string) : bool =
    match exp with
    | [] | [_] -> false
    | '(' :: t ->
        let (open_count, close_count) = count_parens t in
        if open_count = close_count && open_count = 0 then
            true
        else
            check_expression t
    | _ -> false

let () =
    let test_expression exp =
        if check_expression exp then
            print_endline "The expression is balanced"
        else
            print_endline "The expression is not balanced"
    in
    test_expression "(()()())";
    test_expression "(()";
    test_expression "((()))";
    test_expression "(()))";
    test_expression "((((((";
    test_expression "(((())))";
    test_expression "((((())))";
    test_expression "((((())";
    test_expression "(()(()";
    test_expression "(()"

