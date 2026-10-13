
let rec is_multiply_prime (a : int) : bool =
  if a < 100 then false
  else
    let rec find_three_prime (a : int) (count : int) : bool =
      if count = 3 then true
      else
        let prime_count = find_three_prime (a / 10) (count + 1) in
        if prime_count then true
        else false
    in
    find_three_prime (a / 3) 0

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
