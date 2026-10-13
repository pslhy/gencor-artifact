let rec prime_fib (n : int) : int =
    if n = 1 then 2
    else if n = 2 then 3
    else if n = 3 then 5
    else
        let n = n - 1 in
        let fib_n_1 = prime_fib n in
        let fib_n_2 = prime_fib (n-1) in
        let fib_n = fib_n_1 + fib_n_2 in
        if is_prime fib_n then fib_n
        else prime_fib (n+1)

let is_prime (n : int) : bool =
    if n < 2 then false
    else if n = 2 then true
    else
        let rec aux (i : int) : bool =
            i * i > n in
        let rec loop (i : int) : bool =
            if aux i then true
            else if i * i > n then false
            else loop (i + 1) in
        loop 2


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
