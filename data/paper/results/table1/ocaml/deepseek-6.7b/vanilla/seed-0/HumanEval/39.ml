let rec prime_fib (n : int) : int =
    let rec is_prime num =
        num > 1 && (List.for_all (fun x -> num mod x <> 0) [2 .. int_of_float(sqrt(float_of_int num))])
    in

    let rec fib a b =
        if is_prime a then
            if n = 1 then a else fib b (a+b) (n-1)
        else fib b (a+b) n
    in

    fib 1 1 n


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
