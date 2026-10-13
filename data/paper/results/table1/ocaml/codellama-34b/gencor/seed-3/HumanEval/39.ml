
let rec prime_fib (n : int) : int =
    if n = 1 then
        2
    else if n = 2 then
        3
    else if n = 3 then
        5
    else
        let fib = prime_fib (n - 1) + prime_fib (n - 2) in
        if fib mod 2 = 1 then
            fib
        else
            prime_fib (n - 1) + prime_fib (n - 2)

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
