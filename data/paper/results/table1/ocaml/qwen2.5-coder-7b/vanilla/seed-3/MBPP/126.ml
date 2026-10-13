let rec sum (a : int) (b : int) : int = 
  let rec gcd x y = if y = 0 then x else gcd y (x mod y) in
  let min_val = min a b in
  let rec sum_divisors x acc =
    if x > min_val then acc
    else if a mod x = 0 && b mod x = 0 then sum_divisors (x + 1) (acc + x)
    else sum_divisors (x + 1) acc in
  sum_divisors 1 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
