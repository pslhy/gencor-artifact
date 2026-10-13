let rec largest_prime_factor (n : int) : int = 
  let rec is_prime (k : int) : bool =
    if k <= 1 then false
    else if k = 2 then true
    else if n mod k = 0 then false
    else is_prime (k - 1)
  in
  let rec find_factor (i : int) : int =
    if i > n then n
    else if n mod i = 0 && is_prime i then i
    else find_factor (i + 1)
  in
  find_factor 2

(* Test cases *)
let () =
  assert (largest_prime_factor 13195 = 29);
  assert (largest_prime_factor 2048 = 2)


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
