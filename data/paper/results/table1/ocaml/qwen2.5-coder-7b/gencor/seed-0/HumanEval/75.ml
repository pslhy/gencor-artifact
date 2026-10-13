
let rec is_multiply_prime (a : int) : bool = 
  let is_prime n =
    if n <= 1 then false
    else if n <= 3 then true
    else if n mod 2 = 0 || n mod 3 = 0 then false
    else
      let rec check i =
        if i * i > n then true
        else if n mod i = 0 || n mod (i + 2) = 0 then false
        else check (i + 6)
      in check 5
  in
  let rec count_factors n count =
    if n = 1 then count = 3
    else if n mod 2 = 0 then count_factors (n / 2) (count + 1)
    else
      let rec check i count =
        if i * i > n then count = 3
        else if n mod i = 0 && is_prime i then count_factors (n / i) (count + 1)
        else check (i + 1) count
      in check 2 count
  in count_factors a 0

let is_multiply_prime 30 = true

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
