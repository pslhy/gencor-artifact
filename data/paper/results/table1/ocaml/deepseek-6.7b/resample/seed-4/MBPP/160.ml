(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
let rec find_solution (a : int) (b : int) (n : int) :  int * int option =
  if a * x + b * y = n then
    (x, Some (y))
  else if a * (x + 1) + b * y = n then
    (x + 1, Some (y))
  else if a * x + b * (y + 1) = n then
    (x, Some (y + 1))
  else if a * (x + 1) + b * (y + 1) = n then
    (x + 1, Some (y + 1))
  else
    None

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:10: Unbound value "x" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_solution (a : int) (b : int) (n : int) :  int * int option =
  match (a, b, n) with
  | (_, _, 0) -> (0, Some 0)
  | (_, 0, _) -> None
  | _ ->
      let (x, y) = find_solution a (b mod a) (n mod a) in
      (x, Option.map ((+) ((n / a) * b * x)) y)

