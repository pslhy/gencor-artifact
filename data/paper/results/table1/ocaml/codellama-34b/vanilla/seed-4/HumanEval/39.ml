let rec prime_fib (n : int) : int =
    if n <= 2 then
        n
    else
        let (a, b) = (fib (n - 1), fib (n - 2)) in
        if is_prime (a + b) then
            a + b
        else
            prime_fib (n - 1)

(*Helper function to check if a number is prime or not*)
let is_prime (n : int) : bool =
    let rec is_prime_helper (i : int) : bool =
        if i < 2 then
            true
        else if n mod i = 0 then
            false
        else
            is_prime_helper (i - 1)
    in
    is_prime_helper (n / 2)

(*Helper function to calculate fibonacci number*)
let rec fib (n : int) : int =
    if n = 0 then
        0
    else if n = 1 then
        1
    else
        fib (n - 1) + fib (n - 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     prime_fib returns n-th number that is a Fibonacci number and it's also prime. *)
(*     >>> prime_fib 1 *)
(*     2 *)
(*     >>> prime_fib 2 *)
(*     3 *)
(*     >>> prime_fib 3 *)
(*     5 *)
(*     >>> prime_fib 4 *)
(*     13 *)
(*     >>> prime_fib 5 *)
(*     89 *)
