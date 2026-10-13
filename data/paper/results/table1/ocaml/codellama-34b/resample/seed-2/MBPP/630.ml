(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract all the adjacent coordinates of the given coordinate tuple. *)
let rec get_coordinates (test_tup :  int * int) : int list list =
    let (a, b) = test_tup in
    let coords = [(a-1, b) : (a, b-1) : (a+1, b) : (a, b+1) : []] in
    coords

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:28: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_coordinates (test_tup :  int * int) : int list list =
    let (a, b) = test_tup in
    let coords = [(a-1, b); (a, b-1); (a+1, b); (a, b+1)] in
    coords

