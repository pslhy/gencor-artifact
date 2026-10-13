let rec is_not_prime (n : int) : bool =
  if n < 2 then
    true
  else if n mod 2 = 0 then
    false
  else
    let rec is_not_prime_helper i =
      if i * i > n then
        true
      else if n mod i = 0 then
        false
      else
        is_not_prime_helper (i + 1)
    in
    is_not_prime_helper 3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to identify non-prime numbers. *)
