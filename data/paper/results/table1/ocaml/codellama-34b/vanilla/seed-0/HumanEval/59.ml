let rec largest_prime_factor (n : int) : int =
    if n <= 1 then 1
    else if is_prime n then n
    else largest_prime_factor (n / (smallest_prime_factor n))

let smallest_prime_factor (n : int) : int =
    let rec smallest_divisor (n : int) : int =
        if n = 1 then 1
        else if is_divisible n 1 then 1
        else smallest_divisor (n + 1)
    in
    smallest_divisor (n * n)

let is_divisible (n : int) (divisor : int) : bool =
    n mod divisor = 0

let is_prime (n : int) : bool =
    let upper_limit = int_of_float (sqrt (float_of_int n))
    not (Array.exists (fun i -> n mod i = 0) (Array.range 2 upper_limit))


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
