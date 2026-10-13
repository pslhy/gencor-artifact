let rec is_multiply_prime (a : int) : bool = 
  let rec is_prime (n : int) : bool =
    if n <= 1 then false
    else if n = 2 then true
    else if n mod 2 = 0 then false
    else
      let rec check_divisor (divisor : int) : bool =
        if divisor * divisor > n then true
        else if n mod divisor = 0 then false
        else check_divisor (divisor + 1)
      in check_divisor 3
  in
  let rec find_factors (n : int) (count : int) (prod : int) : bool =
    if n <= 1 then count = 3 && prod = a
    else if is_prime n && n * prod > a then false
    else if n * prod = a then find_factors (n + 1) (count + 1) n
    else find_factors (n + 1) count prod
  in find_factors 2 0 1

let is_multiply_prime a = is_multiply_prime a


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
