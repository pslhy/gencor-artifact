let rec prime_fib (n : int) : int =
  if n = 1 then
    2
  else if n = 2 then
    3
  else
    let rec fib (n : int) : int =
      if n <= 1 then
        n
      else
        fib (n - 1) + fib (n - 2)
    in
    let rec is_prime (n : int) : bool =
      n <= 1 || (n mod 2 <> 0 && is_prime (n / 2))
    in
    let rec find_prime_fib (n : int) : int option =
      if n <= 1 then
        None
      else
        match find_prime_fib (n - 1) with
        | None ->
          None
        | Some fib_num ->
          if is_prime fib_num then
            Some fib_num
          else
            find_prime_fib (n - 1)
    in
    find_prime_fib n


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
