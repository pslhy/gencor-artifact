(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)
let rec max_of_nth (test_list : int list list) (n : int) : int = 
    (* base case: if only one item in the list, return the max *)
    if length test_list = 1 then
        test_list @ [n]
    else 
        (* recursive case: find the max of the current column and the remaining columns *)
        let left = test_list.[0..(n-1)] @ [n] in
        let right = test_list.[(n+1)..(length test_list)-1] @ [n] in
        max (max_of_nth left) (max_of_nth right)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:37: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_of_nth (test_list : int list list) (n : int) : int =
    match test_list with
    | [] -> None
    | [x] -> Some (x @ [n])
    | x::xs -> Some (x @ [n])

let rec max_list (test_list : int list) (n : int) : int =
    if test_list = [] then
        n
    else
        let (x, xs) = test_list in
        max (max_of_nth x) (max_list xs)

let solve (test_list : int list list) : int =
    max_list test_list 0

