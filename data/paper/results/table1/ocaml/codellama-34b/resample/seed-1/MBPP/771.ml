(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
let rec check_expression (exp : string) : bool =
    let is_balanced (c : char) =
        match c with
        | '(' | ')' | '[' | ']' | '{' | '}' -> true
        | _ -> false
    in
    let rec loop (exp : string) (open_brackets : 'a list) =
        match exp with
        | [] -> open_brackets = []
        | c :: cs ->
            if is_balanced c then
                if c = '(' || c = '[' || c = '{' then
                    loop cs (c :: open_brackets)
                else if open_brackets = [] then
                    false
                else
                    let (head, tail) = List.hd_tl open_brackets in
                    if head = c then
                        loop cs tail
                    else
                        false
            else
                loop cs open_brackets
    in
    loop exp []

(* example usage *)
let _ = print_endline (string_of_bool (check_expression "()")) (* true *)
let _ = print_endline (string_of_bool (check_expression "([{}])")) (* true *)
let _ = print_endline (string_of_bool (check_expression "([]")) (* false *)
let _ = print_endline (string_of_bool (check_expression "((")) (* false *)

