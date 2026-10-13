let rec prime_fib (n : int) : int = 
  let is_prime num =
    if num <= 1 then false
    else
      let rec check_divisor i =
        if i * i > num then true
        else if num mod i = 0 then false
        else check_divisor (i + 1)
      in check_divisor 2
  in

  let rec fib a b count =
    if count = n then a
    else
      let next = a + b in
      if is_prime next then fib b next (count + 1)
      else fib b next count
  in fib 0 1 1


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
