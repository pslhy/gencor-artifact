let rec is_not_prime (n : int) : bool =
  if n < 2 then true
  else if n = 2 then false
  else
    let rec is_divisor (i : int) : bool =
      if i * i > n then false
      else if n mod i = 0 then true
      else is_divisor (i + 1)
    in
    is_divisor 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to identify non-prime numbers. *)
