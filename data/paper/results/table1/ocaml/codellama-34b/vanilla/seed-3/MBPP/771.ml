let rec check_expression (exp : string) : bool =
    if String.length exp = 0 then
        true
    else if String.get exp 0 = '(' then
        match String.index_opt exp ')' with
        | Some i -> check_expression (String.sub exp 1 (i - 1)) && check_expression (String.sub exp (i + 1) (String.length exp - i - 1))
        | None -> false
    else if String.get exp 0 = ')' then
        false
    else
        check_expression (String.sub exp 1 (String.length exp - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
