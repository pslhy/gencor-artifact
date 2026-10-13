
let rec largest_prime_factor (n : int) : int = 
    let is_prime (x : int) : bool = 
        if x <= 1 then false
        else if x = 2 then true
        else List.for_all (fun i -> x mod i <> 0) [2; 3; 5; 7; 11; 13; 17; 19; 23; 29]
    in
    if is_prime n then n
    else if n mod 2 = 0 then largest_prime_factor (n / 2)
    else largest_prime_factor (n - 1)

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
