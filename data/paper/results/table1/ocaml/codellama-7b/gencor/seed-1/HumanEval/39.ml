
let rec prime_fib (n : int) : int =
  let rec fib (n : int) : int =
    match n with
    | 0 | 1 -> 1
    | _ -> fib (n - 1) + fib (n - 2)
  in
  let rec find (n : int) : int =
    match n with
    | 0 -> 1
    | _ -> if (fib n) = (fib (n - 1)) * 2 then find (n - 1) else fib n
  in
  find n

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
