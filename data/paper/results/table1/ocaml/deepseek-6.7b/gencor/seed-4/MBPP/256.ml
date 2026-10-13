
let rec count_Primes_nums (n : int) : int =
  if n < 2 then 0
  else if n == 2 then 1
  else if n == 3 then 2
  else count_Primes_nums (n - 1) + count_Primes_nums (n - 3);;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
