
let rec find_solution (a : int) (b : int) (n : int) :  int * int option = 
  let rec helper x y =
    let test_x = a * x in
    let test_y = b * y in
    if test_x + test_y = n then Some (x, y)
    else if test_x > n then None
    else helper (x + 1) y
  in helper 0 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
