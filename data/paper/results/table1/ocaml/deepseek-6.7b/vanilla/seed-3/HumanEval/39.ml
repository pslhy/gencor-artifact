let rec prime_fib (n : int) : int =
  let rec is_prime n =
    if n < 2 then false else
    let rec loop i =
      if i * i > n then true else
      if n mod i = 0 then false else
      loop (i + 1)
    in
    loop 2
  in
  let rec fib n =
    if n < 2 then n else
    fib (n - 1) + fib (n - 2)
  in
  let rec loop n fib1 fib2 =
    if n = 0 then fib2 else
    if is_prime fib2 then loop (n - 1) fib2 (fib (fib1 + 1)) else
    loop n fib1 (fib (fib2 + 1))
  in
  loop (n - 1) 1 2


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
