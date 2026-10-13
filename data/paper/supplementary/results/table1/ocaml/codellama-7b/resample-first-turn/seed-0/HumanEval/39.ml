let rec prime_fib (n : int) : int =
  if n = 1 then 2
  else if n = 2 then 3
  else
    let fib_n = fib_n n
    if n = 3 then fib_n
    then if is_prime_number fib_n then fib_n else prime_fib n

and fib_n (m : int) : int =
  if m = 1 then 1
  else if m = 2 then 1
  else fib_n (m - 1) + fib_n (m - 2)

and is_prime_number (n : int) : bool =
  if n = 2 then true
  else if n = 3 then true
  else if n mod 2 = 0 || n mod 3 = 0 then false
  else if n = 5 then true
  else if n mod 5 = 0 || n mod 6 = 0 then false
  else true


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
