let rec find_solution (a : int) (b : int) (n : int) :  int * int option =
  if n mod a = 0 then
    (n / a, Some (n mod a))
  else if n mod b = 0 then
    (n mod b, Some (n / b))
  else
    None


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
