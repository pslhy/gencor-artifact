let rec largest_prime_factor (n : int) : int =
  let rec next_prime p =
    if n mod p = 0 then p else next_prime (p + 1) in
  let rec max_prime_factor p =
    if n mod p = 0 then
      let quotient = n / p in
      if quotient = 1 then p else max_prime_factor (next_prime p)
    else max_prime_factor (p + 1) in
  max_prime_factor 2


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
