
let rec amicable_numbers_sum (limit : int) : int =
  let rec divisor_sum (n : int) : int =
    (1 + n / 2 + (if n mod 2 = 0 then 0 else n))
    - (if n / 3 * 3 = n then n / 3 else 0)
  in
  let rec find_series n adding amicables sums =
    if n > limit then (adding, amicables)
    else if (n, adding) = divisor_sum n adding then find_series (n+1) (adding + n) (n::amicables) (sums + n)
    else find_series (n+1) adding amicables sums
  in
  snd (find_series 1 0 [] 0)

let sum_amicable_numbers n =
  let sum_limit = amicable_numbers_sum n in
  sum_limit * 2

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
