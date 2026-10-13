
let rec largest_prime_factor (n : int) : int = 
    let rec is_prime (m : int) : bool =
        if m <= 1 then false
        else if m <= 3 then true
        else if m mod 2 = 0 || m mod 3 = 0 then false
        else
            let rec check_divisor (i : int) : bool =
                if i * i > m then true
                else if m mod i = 0 || m mod (i + 2) = 0 then false
                else check_divisor (i + 6)
            in check_divisor 5
    in
    if is_prime n then n
    else
        let rec find_factor (i : int) : int =
            if i * i > n then n
            else if n mod i = 0 then i
            else find_factor (i + 1)
        in
        let factor = find_factor 2 in
        largest_prime_factor (n / factor)

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
