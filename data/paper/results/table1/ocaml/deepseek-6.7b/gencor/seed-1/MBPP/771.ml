
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

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
