let rec largest_prime_factor (n : int) : int =
  let rec next_prime (n : int) : int =
    if is_prime n then n else next_prime (n + 1)
  and is_prime (n : int) : bool =
    let rec check_divisor (n : int) (i : int) : bool =
      if i * i > n then true else if n mod i = 0 then false else check_divisor n (i + 1)
    in n > 1 && check_divisor n 2
  in
  let rec sub_factor (n : int) (p : int) : int =
    if n mod p = 0 then sub_factor (n / p) p else n
  in
  let rec find_prime_factor (n : int) : int =
    let p = next_prime (sub_factor n (next_prime 2)) in
    if n = p then p else find_prime_factor p
  in find_prime_factor n


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
