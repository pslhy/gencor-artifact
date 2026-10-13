(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec prime_fib (n : int) : int =
  let fib n =
    match n with
    | 0 -> 0
    | 1 -> 1
    | n -> fib (n - 1) + fib (n - 2)
  in
  let is_prime n =
    let rec test_divisor d =
      d * d > n || n mod d <> 0 && test_divisor (d + 1)
    in
    test_divisor 2
  in
  fib n |> is_prime

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:12: Unbound value "fib" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec prime_fib (n : int) : int =
  if n < 0 then raise (Invalid_argument "Negative argument")
  else if n = 0 then 0
  else if n = 1 then 1
  else if n = 2 then 1
  else if n mod 2 = 0 then if is_prime 2 then n else prime_fib (n / 2 - 1)
  else if n mod 2 = 1 then if is_prime 3 then n else prime_fib (n / 2 - 1)

and is_prime (n : int) : bool =
  let rec test_divisor (d : int) (m : int) : bool =
    d * d - m >= n || m = 0 && d != 1 && test_divisor (d + 2) (m - 2)
  in
  test_divisor (int_of_float (sqrt (float_of_int n))) n

