
let rec prime_fib (n : int) : int =
    let fib n =
        match n with
        | 0 | 1 -> n
        | _ -> let (x, y) = (fst (fst (fst (fst (fst (n - 1)))))), (snd (fst (fst (fst (fst (n - 1)))))) in x + y
    in
    let rec check_prime (n : int) : bool =
        if n <= 1 then
            false
        else if n = 2 || n = 3 then
            true
        else if n mod 2 = 0 || n mod 3 = 0 then
            false
        else
            let rec loop (i : int) : bool =
                if i * i > n then
                    true
                else if n mod i = 0 then
                    false
                else
                    loop (i + 1)
            in
            loop 5
    in
    let rec find_prime (i : int) : int =
        if check_prime (fib i) then
            fib i
        else
            find_prime (i + 1)
    in
    find_prime n

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
