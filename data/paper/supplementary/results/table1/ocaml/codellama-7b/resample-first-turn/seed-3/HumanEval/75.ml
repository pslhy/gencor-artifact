let rec is_multiply_prime (a : int) : bool =
  if a < 100 then false
  else
    let rec find_three_prime (a : int) (count : int) : bool =
      if count = 3 then true
      else
        let prime_count = find_prime a in
        if prime_count > 3 then find_three_prime (a * a) (count + prime_count)
        else false
    in
    find_three_prime a 0

and find_prime (n : int) : int =
  let rec find_prime_helper (n : int) (i : int) : bool =
    if i <= 1 || n = 1 then false
    else if n mod i = 0 then false
    else find_prime_helper n (i - 1)
  in
  let rec find_prime_count (n : int) (count : int) : int =
    if find_prime_helper n count then count + 1
    else find_prime_count n (count + 1)
  in
  find_prime_count n 0
in
is_multiply_prime a


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
