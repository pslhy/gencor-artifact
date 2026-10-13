let rec find_solution (a : int) (b : int) (n : int) :  int * int option =
  if a = 0 && n = 0 then (0, Some n)
  else if a = 0 && n <> 0 then (0, None)
  else if b = 0 && n <> 0 then (0, None)
  else if n = 0 && a <> 0 && b <> 0 then (1, Some n)
  else if a = b = 0 then 
    find_solution a 1 n
  else if a < b then
    let (x, rest) = find_solution a 1 n
    (x + 1, Some rest)
  else
    let (x, rest) = find_solution b 1 n
    (x + 1, Some rest)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
