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
  if n = 2 then 2
  else if n mod 2 = 0 then largest_prime_factor (n / 2)
  else if Int.is_prime n then n
  else
    let rec find_prime_factor (n : int) : int option =
      if n = 2 then Some 2
      else if n mod 2 = 0 then find_prime_factor (n / 2)
      else if Int.is_prime n then Some n
      else None
    in
    (largest_prime_factor (n / 2))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Int.is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec largest_prime_factor (n : int) : int =
  if n = 2 then 2
  else if n mod 2 = 0 then largest_prime_factor (n / 2)
  else if is_prime n then n
  else
    let rec find_prime_factor (n : int) : int option =
      if n = 2 then Some 2
      else if n mod 2 = 0 then find_prime_factor (n / 2)
      else if is_prime n then Some n
      else None
    in
    (largest_prime_factor (n / 2))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec largest_prime_factor (n : int) : int =
  if n = 2 then 2
  else if n mod 2 = 0 then largest_prime_factor (n / 2)
  else if Int.is_prime n then n
  else
    let rec find_prime_factor (n : int) : int option =
      if n = 2 then Some 2
      else if n mod 2 = 0 then find_prime_factor (n / 2)
      else if Int.is_prime n then Some (n - 1)
      else None
    in
    (largest_prime_factor (n / 2))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "Int.is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec largest_prime_factor (n : int) : int =
  if n = 2 then 2
  else if n mod 2 = 0 then largest_prime_factor (n / 2)
  else if prime_divisors n = [2; n] then n else
    let rec find_prime_factor (n : int) : int option =
      if n = 2 then Some 2
      else if n mod 2 = 0 then find_prime_factor (n / 2)
      else if prime_divisors n = [2; n] then Some (n - 1)
      else None
    in
    largest_prime_factor (n / 2)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Unbound value "prime_divisors" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec largest_prime_factor (n : int) : int =
  if n = 2 then 2
  else if n mod 2 = 0 then largest_prime_factor (n / 2)
  else if prime_divisors n = [2; n] then n else
    let rec find_prime_factor (n : int) : int option =
      if n = 2 then Some 2
      else if n mod 2 = 0 then find_prime_factor (n / 2)
      else if prime_divisors n = [2; n] then Some (n - 1)
      else None
    in
    largest_prime_factor (n / 2)

let prime_divisors (n : int) : int list =
  assert false with _ -> []

