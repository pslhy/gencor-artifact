
let rec find_solution (a : int) (b : int) (n : int) :  int * int option =
  if a * 0 + b * n = n || a * n + 0 * b = n then (0, Some (n/b))
  else if a < 0 && 0 < b && n < abs(a) * b then find_solution a b (n+a)
  else if a > 0 && 0 < b && n < a * b then find_solution a b (n-b)
  else (n/a, n/b)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
