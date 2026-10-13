let rec largest_prime_factor (n : int) : int =
  if n mod 2 = 0 && is_prime (n / 2) then n / 2
  else largest_prime_factor (n / 2)

and is_prime (n : int) : bool =
  if n = 1 then false
  else
    let rec check (k : int) : bool =
      if k * k > n then true
      else if n mod k = 0 then false
      else check (k + 1)
    in
    check 2

let n = 13195
let result = largest_prime_factor n
Printf.printf "%d\n" result


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
