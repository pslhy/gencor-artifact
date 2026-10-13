
let rec prime_fib (n : int) : int =
  let rec is_prime n =
    n < 2 || (List.for_all (fun i -> n mod i <> 0) (List.init ((n |> float |> sqrt) |> int_of_float) ((+) 2)))
      
  and is_fib n =
    let rec fib a b =
      if a>n then false
      else if a=n then true
      else fib b (a+b)
    in fib 0 1

  in let rec loop m i =
    if is_prime m && is_fib m then
      if n = 1 then m
      else loop (m+1) (i+1)
    else loop (m+1) i
  in loop 0 0

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
