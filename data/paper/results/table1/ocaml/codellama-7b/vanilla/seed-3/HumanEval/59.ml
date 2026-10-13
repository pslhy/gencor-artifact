let rec largest_prime_factor (n : int) : int =
  if n = 1 then
    1
  else if n mod 2 = 0 then
    largest_prime_factor (n / 2)
  else
    let rec check_prime (p : int) (is_prime : bool) : int =
      if p * p > n then
        n
      else if n mod p = 0 then
        check_prime (p + 1) is_prime
      else
        check_prime (p + 1) false
    in
    largest_prime_factor (check_prime 3 true)


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
