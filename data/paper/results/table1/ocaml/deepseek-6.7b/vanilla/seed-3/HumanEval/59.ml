let rec largest_prime_factor (n : int) : int =
  let rec prime_helper (p : int) : bool =
    if p < 2 then false else if p = 2 then true else
    if n mod p = 0 then false else prime_helper (p-1) in
  let rec factor_helper (f : int) : int =
    if f * f > n then n else if n mod f = 0 then f else
    if prime_helper f then n / f else factor_helper (f+1) in
  factor_helper 2


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
