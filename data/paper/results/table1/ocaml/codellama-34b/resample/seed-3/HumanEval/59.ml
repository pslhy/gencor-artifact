(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return the largest prime factor of n. Assume n > 1 and is not a prime. *)
(*     >>> largest_prime_factor 13195 *)
(*     29 *)
(*     >>> largest_prime_factor 2048 *)
(*     2 *)
let rec largest_prime_factor (n : int) : int =
  if n mod 2 = 0 then
    largest_prime_factor (n / 2)
  else
    let rec smallest_prime_divisor (n : int) : int =
      if n = 1 then
        n
      else if n mod 2 = 0 then
        2
      else
        smallest_prime_divisor (n + 1) in
    smallest_prime_divisor n

