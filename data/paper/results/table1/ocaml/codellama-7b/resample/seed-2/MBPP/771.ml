(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
let rec check_expression (exp : string) : bool =
    let open String in
    match exp with
    | "" -> true
    | hd :: tl when hd = "(" -> check_expression tl
    | hd :: tl when hd = ")" -> check_expression tl
    | hd :: tl when hd = "[" -> check_expression tl
    | hd :: tl when hd = "]" -> check_expression tl
    | hd :: tl when hd = "{" -> check_expression tl
    | hd :: tl when hd = "}" -> check_expression tl
    | hd :: tl when hd = "|" -> check_expression tl
    | hd :: tl when hd = "&" -> check_expression tl
    | _ -> false

let balanced (exp : string) : bool =
    check_expression (exp : [^string] :mod)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:30: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_expression (exp : string) : bool =
    let open String in
    match exp with
    | "" -> true
    | hd :: tl ->
        match hd with
        | "(" -> check_expression tl
        | ")" -> check_expression tl
        | "[" -> check_expression tl
        | "]" -> check_expression tl
        | "{" -> check_expression tl
        | "}" -> check_expression tl
        | "|" -> check_expression tl
        | "&" -> check_expression tl
        | _ -> false

let balanced (exp : string) : bool =
    check_expression exp

