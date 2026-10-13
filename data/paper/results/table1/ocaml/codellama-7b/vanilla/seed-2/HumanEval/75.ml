let rec is_multiply_prime (a : int) : bool =
  let prime_check (a : int) : bool =
    let rec check_prime (a : int) (i : int) : bool =
      if i > 100 then false
      else if a mod i = 0 && a / i = 1 then true
      else check_prime a (i + 1) in check_prime a 2 in
  let rec factorize (a : int) (factors : int list) : int list =
    if a = 1 then factors
    else factorize a (factors @ [a]) in
  let factors = factorize a [] in
  let rec is_prime (a : int) (factors : int list) : bool =
    match factors with
    | [] -> false
    | x :: [] -> x mod factors.[0] = 0 && x mod factors.[1] = 0 && x mod factors.[2] = 0
    | x :: y :: [] -> x mod factors.[0] = 0 && x mod factors.[1] = 0 && x mod factors.[2] = 0
    | x :: y :: z :: factors -> x mod factors.[0] = 0 && x mod factors.[1] = 0 && x mod factors.[2] = 0 && is_prime a (y :: z :: factors) in
  prime_check a && is_prime a factors

let is_multiply_prime a = is_multiply_prime a (is_prime (a))

let%test _ = is_multiply_prime 30 = true

let%test _ = is_multiply_prime 35 = false

let%test _ = is_multiply_prime 64 = true

let%test _ = is_multiply_prime 70 = false

let%test _ = is_multiply_prime 90 = true

let%test _ = is_multiply_prime 91 = false

let%test _ = is_multiply_prime 120 = true

let%test _ = is_multiply_prime 125 = false

let%test _ = is_multiply_prime 128 = true

let%test _ = is_multiply_prime 130 = false

let%test _ = is_multiply_prime 150 = true

let%test _ = is_multiply_prime 151 = false

let%test _ = is_multiply_prime 180 = true

let%test _ = is_multiply_prime 181 = false

let%test _ = is_multiply_prime 210 = true

let%test _ = is_multiply_prime 211 = false

let%test _ = is_multiply_prime 240 = true

let%test _ = is_multiply_prime 241 = false

let%test _ = is_multiply_prime 270 = true

let%test _ = is_multiply_prime 271 = false

let%test _ = is_multiply_prime 300 = true

let%test _ = is_multiply_prime 301 = false

let%test _ = is_multiply_prime 330 = true

let%test _ = is_multiply_prime 331 = false

let%test _ = is_multiply_prime 360 = true

let%test _ = is_multiply_prime 361 = false

let%test _ = is_multiply_prime 390 = true

let%test _ = is_multiply_prime 391 = false

let%test _ = is_multiply_prime 420 = true

let%test _ = is_multiply_prime 421 = false

let%test _ = is_multiply_prime 450 = true

let%test _ = is_multiply_prime 451 = false

let%test _ = is_multiply_prime 480 = true

let%test _ = is_multiply_prime 481 = false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns true if the given number is the multiplication of 3 prime numbers *)
(*     and false otherwise. *)
(*     Knowing that (a) is less then 100. *)
(*     Example: *)
(*     >>> is_multiply_prime 30 *)
(*     true *)
(*     30 = 2 * 3 * 5 *)
