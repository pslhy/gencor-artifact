let rec find_solution (a : int) (b : int) (n : int) :  int * int option =
match n with
| 0 -> 0, 1
| _ when n < 0 -> None
| _ ->
  let rec check (x : int) (y : int) : int * int option =
  if x * a + y * b = n then Some (x, y) else
  match (x + 1) * a + (y - 1) * b = n with
  | true -> Some (x + 1, y - 1)
  | false -> check (x + 1) (y - 1) in
  check 1 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
