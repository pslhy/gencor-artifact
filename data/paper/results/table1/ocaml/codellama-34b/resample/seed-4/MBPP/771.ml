(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
let rec check_expression (exp : string) : bool = 
    (* First, we ignore any char that is not a parenthesis *)
    let expr = String.filter (fun c -> c = '(' || c = ')') exp in
    (* Then, we recursevily check if the parentheses are balanced, taking the
       left part of the recursion checking the opening parentheses, and the right
       part checking the closing parentheses *)
    let rec check_expression_aux (left : string) (right : string) : bool =
        match (left, right) with
        | "", "" -> true
        | "(" :: rest_left, _
        | _ :: rest_left, "" -> check_expression_aux rest_left right
        | _, ")" :: rest_right -> check_expression_aux left rest_right
        | _ -> false
    in
    check_expression_aux (String.left_chars exp) (String.right_chars exp)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:16: Unbound value "String.filter" *)
(*     Hint: Did you mean "iter"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_expression (exp : string) : bool = 
    (* First, we ignore any char that is not a parenthesis *)
    let expr = String.iter (fun c -> c = '(' || c = ')') exp in
    (* Then, we recursevily check if the parentheses are balanced, taking the
       left part of the recursion checking the opening parentheses, and the right
       part checking the closing parentheses *)
    let rec check_expression_aux (left : string) (right : string) : bool =
        match (left, right) with
        | "", "" -> true
        | "(" :: rest_left, _
        | _ :: rest_left, "" -> check_expression_aux rest_left right
        | _, ")" :: rest_right -> check_expression_aux left rest_right
        | _ -> false
    in
    check_expression_aux (String.left_chars exp) (String.right_chars exp)

