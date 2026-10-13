let rec prime_fib (n : int) : int =
  let rec is_prime n =
    n < 2 || (List.for_all (fun i -> n mod i <> 0) (List.init ((n |> float |> sqrt) |> int) (fun i -> i + 2)))
  and fib a b p q count =
    if count = n then a + b
    else fib b (a + b) (q * q + p * p) (2 * p * q) (count + 1)
  in
  let rec aux i =
    let fib_num = fib 0 1 0 1 1 in
    if is_prime fib_num then
      if n = 1 then fib_num
      else aux (i + 1)
    else aux (i + 1)
  in
  aux 1


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
