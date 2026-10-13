(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
let rec check_expression (exp : string) : bool =
  let rec check (exp : char list) (stack : char list) : bool =
    match exp with
    | [] -> (stack = [])
    | h::t ->
        begin match h with
        | '(' -> check t (h::stack)
        | ')' ->
            begin match stack with
            | [] -> false
            | _::tl -> check t tl
            end
        | _ -> check t stack
        end
  in check (List.of_string exp) []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:13: Unbound value "List.of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_expression (exp : string) : bool =
  let rec check (exp : char list) (stack : char list) : bool =
    match exp with
    | [] -> (stack = [])
    | h::t ->
        begin match h with
        | '(' -> check t (h::stack)
        | ')' ->
            begin match stack with
            | [] -> false
            | _::tl -> check t tl
            end
        | _ -> check t stack
        end
  in check (String.to_list exp) []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:13: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_expression (exp : string) : bool =
  let rec check (exp : char list) (stack : char list) : bool =
    match exp with
    | [] -> (stack = [])
    | h::t ->
        begin match h with
        | '(' -> check t (h::stack)
        | ')' ->
            begin match stack with
            | [] -> false
            | _::tl -> check t tl
            end
        | _ -> check t stack
        end
  in check (List.of_seq (String.to_seq exp)) []

