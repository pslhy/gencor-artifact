let rec prime_fib (n : int) : int = 
  let rec is_prime (x : int) : bool = 
    let rec loop (i : int) : bool = 
      if i * i > x then true
      else if x mod i = 0 then false
      else loop (i + 1)
    in
    if x <= 1 then false
    else loop 2
  in
  let rec fib (a : int) (b : int) (count : int) : int = 
    if count = 0 then a
    else fib b (a + b) (count - 1)
  in
  let rec loop (i : int) (a : int) (b : int) (count : int) : int = 
    if count = 0 then a
    else
      let next = fib a b (i + 1) in
      if is_prime next then loop (i + 1) b next (count - 1)
      else loop (i + 1) b next count
  in
  loop 0 0 1 n


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
