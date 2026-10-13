
let rec is_multiply_prime (a : int) : bool = 
  let rec is_prime (n : int) : bool = 
    if n <= 1 then false
    else if n <= 3 then true
    else if n mod 2 = 0 || n mod 3 = 0 then false
    else 
      let rec check_divisor (i : int) : bool = 
        if i * i > n then true
        else if n mod i = 0 then false
        else check_divisor (i + 6) 
      in check_divisor 5
  in
  let rec multiply_ready (b : int) (c : int) : bool = 
    if b * c > a then false
    else if b * c = a then is_prime b && is_prime c
    else multiply_ready b (c + 1)
  in
  let rec find_multiplier (i : int) : bool = 
    if i * i > a then false
    else if a mod i = 0 && multiply_ready i (a / i) then true
    else find_multiplier (i + 1)
  in
  find_multiplier 2

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
