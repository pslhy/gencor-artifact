let rec prime_fib (n : int) : int =
  let rec fib x y i =
    if x < 0L then fib y (y+x) (i+1)
    else if i = n then y
    else fib y (y+x) (i+1)
  in
  let rec is_prime n =
    if n = 2 then true
    else if n < 2 || not (n mod 2 = 0) then
      let rec is_not_divisor d =
        if d * d > n then true
        else if n mod d = 0 then false
        else is_not_divisor (d + 1)
      in
      is_not_divisor 3
    else false
  in
  let rec find_prime_fib n i =
    let fib_n = fib 1L 1L i in
    if is_prime (int_of_string (Int64.to_string fib_n)) then n
    else find_prime_fib (n + 1) (i + 1)
  in
  find_prime_fib 1 1


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
