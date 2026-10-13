let rec find_solution (a : int) (b : int) (n : int) :  int * int option =
  if b = 0 then if n % a = 0 then (n/a, Some 0) else (0, None)
  else if a = 0 then if n % b = 0 then (Some 0, n/b) else (None, 0)
  else if a < b then find_solution b a n
  else let q = a / b in find_solution (a - q * b) b (n - q * a)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
