let rec find_solution (a : int) (b : int) (n : int) :  int * int option = 
  if a = 0 then
    if b = 0 && n = 0 then Some (0, 0) else None
  else if a = 0 then
    if n mod b = 0 then Some (0, n / b) else None
  else if b = 0 then
    if n mod a = 0 then Some (n / a, 0) else None
  else
    let rec helper x y =
      let d = gcd a b in
      let a' = a / d and b' = b / d and n' = n in
      if a' * x + b' * y = n' then
        Some (x, y)
      else if a' * x + b' * y > n' then None
      else helper (x + b' / gcd a' b') (y - a' / gcd a' b')
    in
    helper (-b / gcd a b) (a / gcd a b)

and gcd x y =
  if y = 0 then abs x else gcd y (x mod y)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists. *)
