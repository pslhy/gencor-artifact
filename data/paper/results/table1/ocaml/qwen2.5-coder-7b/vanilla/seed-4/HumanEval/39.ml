let rec prime_fib (n : int) : int = 
  let rec fib (a : int) (b : int) : int = 
    if b < 0 then a
    else fib b (a + b)
  and is_prime (num : int) : bool = 
    let rec check_divisor (c : int) : bool = 
      if c * c > num then true
      else if num mod c = 0 then false
      else check_divisor (c + 1)
    in if num <= 1 then false else check_divisor 2
  in
  let rec find_prime_fib (index : int) (a : int) (b : int) : int = 
    let next_fib = fib a b in
    if is_prime next_fib then 
      if index = 1 then next_fib
      else find_prime_fib (index - 1) b next_fib
    else find_prime_fib index a b
  in find_prime_fib n 0 1


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
