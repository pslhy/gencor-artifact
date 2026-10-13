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
  let rec is_prime n =
    n < 2 || (n > 2 && not (List.exists (fun x -> n mod x = 0) (Prime.factors n)))
  in
  let rec fib n =
    match n with
    | 0 -> 0
    | 1 -> 1
    | _ -> fib (n - 1) + fib (n - 2)
  in
  let rec helper n i =
    match n, i with
    | n, _ when n = 0 -> 0
    | 0, _ -> helper 1 1
    | _, _ -> let fib_i = fib i in 
               if is_prime fib_i then helper (n - 1) (i + 1) else helper n (i + 1)
  in
  helper n 0

let () =
  for i = 1 to 5 do
    print_int (prime_fib i);
    print_newline ()
  done

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:65: Unbound module "Prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec prime_fib (n : int) : int =
  let rec is_prime n =
    match n with
    | 0 | 1 -> false (* 0 and 1 are not prime *)
    | 2 -> true (* 2 is prime *)
    | _ -> 
      (* Check divisibility by all numbers up to sqrt(n) *)
      let rec loop i =
         i > n || (n mod i <> 0 && loop (i + 1))
      in
      loop 2
  in
  let rec fib n =
    match n with
    | 0 -> 0
    | 1 -> 1
    | _ -> fib (n - 1) + fib (n - 2)
  in
  let rec helper n i =
    match n, i with
    | n, _ when n = 0 -> 0
    | 0, _ -> helper 1 1
    | _, _ -> let fib_i = fib i in 
               if is_prime fib_i then helper (n - 1) (i + 1) else helper n (i + 1)
  in
  helper n 0

let () =
  for i = 1 to 5 do
    print_int (prime_fib i);
    print_newline ()
  done

