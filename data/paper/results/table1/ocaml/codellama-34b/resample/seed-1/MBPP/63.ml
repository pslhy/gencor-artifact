(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between available pairs in the given tuple list. *)
let rec max_difference (test_list :  (int * int) list) : int =
    let rec aux (acc : int * int) (x : int * int * int) : int =
        match x with 
        | (_, (i, j)) -> if i - j > acc then i - j else acc
    (List.fold_left aux Int.min_int test_list)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_difference (test_list :  (int * int) list) : int =
    let rec aux (acc : int * int) (x : int * int * int) : int =
        match x with
        | (a, b, c) -> if a - b > c then a - b else c
    in
    List.fold_left (fun (a, b) -> (aux a, aux b)) (0, 0) test_list

