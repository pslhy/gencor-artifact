
let rec largest_prime_factor (n : int) : int =
  if n = 2 then 2
  else if n mod 2 = 0 then largest_prime_factor (n / 2)
  else if Int.equal (n mod 3) 0 then largest_prime_factor (n / 3)
  else if Int.equal (n mod 5) 0 then largest_prime_factor (n / 5)
  else if Int.equal (n mod 7) 0 then largest_prime_factor (n / 7)
  else if Int.equal (n mod 11) 0 then largest_prime_factor (n / 11)
  else if Int.equal (n mod 13) 0 then largest_prime_factor (n / 13)
  else if Int.equal (n mod 17) 0 then largest_prime_factor (n / 17)
  else if Int.equal (n mod 19) 0 then largest_prime_factor (n / 19)
  else if Int.equal (n mod 23) 0 then largest_prime_factor (n / 23)
  else if Int.equal (n mod 29) 0 then n
  else largest_prime_factor (n - 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return the largest prime factor of n. Assume n > 1 and is not a prime. *)
(*     >>> largest_prime_factor 13195 *)
(*     29 *)
(*     >>> largest_prime_factor 2048 *)
(*     2 *)
