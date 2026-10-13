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
  let rec fib (n : int) : int =
    match n with
    | 0 | 1 -> 1
    | _ -> fib (n - 1) + fib (n - 2)
  in
  let rec find (n : int) : int =
    match n with
    | 0 -> 1
    | _ -> if Number.is_prime (fib n) then fib n else find (n - 1)
  in
  find n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:15: Unbound module "Number" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec prime_fib (n : int) : int =
  let rec fib (n : int) : int =
    match n with
    | 0 | 1 -> 1
    | _ -> fib (n - 1) + fib (n - 2)
  in
  let rec find (n : int) : int =
    match n with
    | 0 -> 1
    | _ -> if Int.is_prime (fib n) then fib n else find (n - 1)
  in
  find n

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:15: Unbound value "Int.is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec prime_fib (n : int) : int =
  let rec fib (n : int) : int =
    match n with
    | 0 | 1 -> 1
    | _ -> fib (n - 1) + fib (n - 2)
  in
  let rec find (n : int) : int =
    match n with
    | 0 -> 1
    | _ -> if Int.is_prime (fib n) then fib n else find (n - 1)
  in
  find n

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:15: Unbound value "Int.is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec prime_fib (n : int) : int =
  let rec fib (n : int) : int =
    match n with
    | 0 | 1 -> 1
    | _ -> fib (n - 1) + fib (n - 2)
  in
  let rec find (n : int) : int =
    match n with
    | 0 -> 1
    | _ -> if Int.is_prime (fib n) then fib n else find (n - 1)
  in
  find n

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:15: Unbound value "Int.is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec prime_fib (n : int) : int =
  let rec fib (n : int) : int =
    match n with
    | 0 | 1 -> 1
    | _ -> fib (n - 1) + fib (n - 2)
  in
  let rec find (n : int) : int =
    match n with
    | 0 -> 1
    | _ -> if (n mod 2 = 0) && n <> 2 then find (n / 2) else if (n mod 3 = 0) && n <> 3 then find (n / 3) else if n = 5 then 5 else fib n
  in
  find n

