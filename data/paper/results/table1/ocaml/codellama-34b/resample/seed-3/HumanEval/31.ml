(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return true if a given number is prime, and false otherwise. *)
(*     >>> is_prime 6 *)
(*     false *)
(*     >>> is_prime 101 *)
(*     true *)
(*     >>> is_prime 11 *)
(*     true *)
(*     >>> is_prime 13441 *)
(*     true *)
(*     >>> is_prime 61 *)
(*     true *)
(*     >>> is_prime 4 *)
(*     false *)
(*     >>> is_prime 1 *)
(*     false *)
let rec is_prime (n : int) : bool =
    if n < 2 then false
    else
        let rec is_prime_helper (i : int) : bool =
            if i = 1 then true
            else if n mod i = 0 then false
            else is_prime_helper (i - 1)
        in is_prime_helper (n - 1)

let is_prime (n : int) : bool =
    if n < 2 then false
    else
        let rec is_prime_helper (i : int) : bool =
            if i * i > n then true
            else if n mod i = 0 then false
            else is_prime_helper (i + 1)
        in is_prime_helper 2

