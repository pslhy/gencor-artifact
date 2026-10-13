
let rec check_expression (exp : string) : bool =
    match exp with
    | [] | [_] -> false
    | h :: t ->
        let (open_count, close_count) =
            List.fold_left (fun (open_count, close_count) c ->
                match c with
                | '(' -> (open_count + 1, close_count)
                | ')' -> (open_count, close_count + 1)
                | _ -> (open_count, close_count)
            ) (0, 0) exp in
        if open_count = 0 && close_count = 0 then
            true
        else
            check_expression t

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
