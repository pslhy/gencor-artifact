
let rec prime_fib (n : int) : int =
    let rec is_prime num =
        num > 1 && (List.for_all (fun x -> num mod x <> 0) [2..(num-1)])
    and is_fibo num =
        let rec fib_aux a b =
            match b with
            | 0 -> false
            | _ when a < num -> fib_aux b (a + b)
            | _ -> a = num
        in fib_aux 0 1
    in
    let rec find_nth_prime_fibo current num =
        if num = 0 then current
        else
            let next = if is_fibo current && is_prime current then current + 1 else current + 1
            in find_nth_prime_fibo next (num-1)
    in find_nth_prime_fibo 2  n

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
