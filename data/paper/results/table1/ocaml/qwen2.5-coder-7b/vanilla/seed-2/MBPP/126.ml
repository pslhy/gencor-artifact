let rec sum (a : int) (b : int) : int = 
    let rec gcd x y = if y = 0 then x else gcd y (x mod y) in
    let g = gcd a b in
    let rec sum_divisors n = if n > g then 0 else n + sum_divisors (n + 1) in
    sum_divisors 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
