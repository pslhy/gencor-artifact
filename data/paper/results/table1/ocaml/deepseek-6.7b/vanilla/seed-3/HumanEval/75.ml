let rec is_multiply_prime (a : int) : bool =
  let rec prime_helper (n : int) (i : int) : bool =
    if n < 2 then true else if n mod i = 0 then false else prime_helper n (i + 1) in
  let rec prime_factor_count (n : int) (i : int) : int =
    if n = 1 then 0 else if n mod i = 0 then 1 + prime_factor_count (n / i) i else prime_factor_count n (i + 1) in
  if a < 1 then false else if prime_helper a 2 then false else prime_factor_count a 2 = 3
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns true if the given number is the multiplication of 3 prime numbers *)
(*     and false otherwise. *)
(*     Knowing that (a) is less then 100. *)
(*     Example: *)
(*     >>> is_multiply_prime 30 *)
(*     true *)
(*     30 = 2 * 3 * 5 *)
