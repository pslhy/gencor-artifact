(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
let rec count_Primes_nums (n : int) : int =
  if n < 2 then 0
  else if n == 2 then 1
  else if n % 2 == 0 then count_Primes_nums (n - 1)
  else 
    let rec is_prime (n : int) (i : int) =
      if n < 2 then false
      else if i * i > n then true
      else if n % i == 0 then false
      else is_prime n (i + 1)
    in 
    if is_prime n 2 then count_Primes_nums (n - 1) else 1 + count_Primes_nums (n - 1)
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:13: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
  if n < 2 then 0
  else if n = 2 then 1
  else if n mod 2 = 0 then count_Primes_nums (n - 1)
  else 
    let rec is_prime (n : int) (i : int) =
      if n < 2 then false
      else if i * i > n then true
      else if n mod i = 0 then false
      else is_prime n (i + 1)
    in 
    if is_prime n 2 then count_Primes_nums (n - 1) else 1 + count_Primes_nums (n - 1)
;;

