let rec count_Primes_nums (n : int) : int = 
  let rec is_prime num div =
    if div * div > num then true
    else if num mod div = 0 then false
    else is_prime num (div + 1)
  in
  let rec count_primes n count =
    if n <= 1 then count
    else if is_prime (n - 1) 2 then count_primes (n - 1) (count + 1)
    else count_primes (n - 1) count
  in
  count_primes n 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
