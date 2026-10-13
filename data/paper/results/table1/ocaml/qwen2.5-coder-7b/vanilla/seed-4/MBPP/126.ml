let rec sum (a : int) (b : int) : int = 
  let min = if a < b then a else b in
  let rec gcd x y = if y = 0 then x else gcd y (x mod y) in
  let common_divisors_sum = ref 0 in
  for i = 1 to min do
    if a mod i = 0 && b mod i = 0 then
      common_divisors_sum := !common_divisors_sum + i
  done;
  !common_divisors_sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
