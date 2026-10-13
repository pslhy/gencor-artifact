(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given expression is balanced or not. https://www.geeksforgeeks.org/check-for-balanced-parentheses-in-an-expression/ *)
let rec check_expression (exp : string) : bool =
    let rec check (s: char list) (st: char list) : bool =
        match s with
        | [] -> st = []
        | hd::tl ->
            if hd = '(' then check tl (hd::st)
            else if st = [] then false
            else if (hd = ')' && (List.hd st) = '(') then check tl (List.tl st)
            else false
    in check (List.of_string exp) []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:15: Unbound value "List.of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_expression (exp : string) : bool =
    let rec check (s: char list) (st: char list) : bool =
        match s with
        | [] -> st = []
        | hd::tl ->
            if hd = '(' then check tl (hd::st)
            else if st = [] then false
            else if (hd = ')' && (List.hd st) = '(') then check tl (List.tl st)
            else false
    in check (List.init (String.length exp) (String.get exp)) []

