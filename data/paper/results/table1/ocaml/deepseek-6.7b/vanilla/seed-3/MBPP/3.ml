let rec is_not_prime (n : int) : bool =
  if n <= 1 then true
  else if n = 2 then false
  else if n mod 2 = 0 then true
  else
    let sqrt_n = int_of_float (sqrt (float_of_int n)) in
    let rec aux i =
      if i > sqrt_n then false
      else if n mod i = 0 then true
      else aux (i + 2)
    in
    aux 3;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to identify non-prime numbers. *)
