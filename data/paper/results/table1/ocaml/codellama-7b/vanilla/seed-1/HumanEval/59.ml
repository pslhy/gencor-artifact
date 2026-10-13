let rec largest_prime_factor (n : int) : int =
  let is_prime (p : int) =
    p <> 1 &&
    p > 0 &&
    let rec aux (p : int) (n : int) : bool =
      if p = n then true
      else if n mod p = 0 then false
      else aux (p + 1) n
    in
    aux 2 p
  in
  if is_prime n then n else largest_prime_factor (n / 2)


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
