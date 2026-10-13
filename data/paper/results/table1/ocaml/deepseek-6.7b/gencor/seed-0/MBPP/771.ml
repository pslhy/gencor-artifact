
let rec check_expression (exp : string) : bool =
    let rec check (s: char list) (st: char list) : bool =
        match s with
        | [] -> st = []
        | hd::tl ->
            if hd = '(' then check tl (hd::st)
            else if st = [] then false
            else if (hd = ')' && (List.hd st) = '(') then check tl (List.tl st)
            else false
    in check (List.of_seq @@ String.to_seq exp) []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
