let rec find_solution (a : int) (b : int) (n : int) :  int * int option =
  if a = 0 then if n = 0 then (0, Some 0) else (0, None)
  else if b = 0 then if n = 0 then (0, Some 0) else (0, None)
  else if (n mod a = 0) && (n / a >= 0) then (a, Some (n / a))
  else find_solution (b, a - b, n)
(a, Some (n / a + 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
