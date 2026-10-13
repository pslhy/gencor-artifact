let rec largest_prime_factor (n : int) : int =
  let rec find_next_divisor (n : int) (c : int) : int =
    if n mod c = 0 then c
    else find_next_divisor n (c + 1)
  in
  let rec divide_and_check (n : int) (c : int) : int =
    if n mod c = 0 then
      let quotient = n / c in
      if quotient = 1 then c
      else largest_prime_factor quotient
    else divide_and_check n (c + 1)
  in
  divide_and_check n (find_next_divisor n 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return the largest prime factor of n. Assume n > 1 and is not a prime. *)
(*     >>> largest_prime_factor 13195 *)
(*     29 *)
(*     >>> largest_prime_factor 2048 *)
(*     2 *)
