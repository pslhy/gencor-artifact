(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
let rec find_solution (a : int) (b : int) (n : int) :  int * int option = 
  let rec helper x y =
    let test-value = a * x + b * y in
    if test-value = n then (x, y)
    else if test-value > n then None
    else helper (x + 1) y
  in
  helper 0 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:14: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_solution (a : int) (b : int) (n : int) :  int * int option = 
  let rec helper x y =
    let test_value = a * x + b * y in
    if test_value = n then (x, y)
    else if test_value > n then None
    else helper (x + 1) y
  in
  helper 0 0

