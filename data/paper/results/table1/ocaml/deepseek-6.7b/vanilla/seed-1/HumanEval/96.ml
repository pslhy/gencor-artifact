let rec count_up_to (n : int) : int list =
  let rec is_prime (n : int) (i : int) : bool =
    if n <= 2 then n = i
    else if n mod i = 0 then false
    else if i * i > n then true
    else is_prime n (i + 1)
  in
  let rec find_primes (n : int) (i : int) (primes : int list) : int list =
    if i >= n then primes
    else if is_prime i [] then find_primes n (i + 1) (primes @ [i])
    else find_primes n (i + 1) primes
  in
  if n <= 1 then []
  else find_primes n 2 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Implement a function that takes an non-negative integer and returns a list of the first n *)
(*     integers that are prime numbers and less than n. *)
(*     for example: *)
(*     >>> count_up_to 5 *)
(*     [2; 3] *)
(*     >>> count_up_to 11 *)
(*     [2; 3; 5; 7] *)
(*     >>> count_up_to 0 *)
(*     [] *)
(*     >>> count_up_to 20 *)
(*     [2; 3; 5; 7; 11; 13; 17; 19] *)
(*     >>> count_up_to 1 *)
(*     [] *)
(*     >>> count_up_to 18 *)
(*     [2; 3; 5; 7; 11; 13; 17] *)
