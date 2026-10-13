let rec largest_prime_factor (n : int) : int =
    let rec smallest_prime d =
        if n mod d = 0 then d else smallest_prime (d + 1)
    in let sp = smallest_prime 2 in
    if sp * sp > n then n else largest_prime_factor (n / sp)


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
