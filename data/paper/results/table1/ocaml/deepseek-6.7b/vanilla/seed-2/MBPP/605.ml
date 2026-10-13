let rec prime_num (num : int) : bool =
  if num <= 1 then false
  else if num = 2 then true
  else if num mod 2 = 0 then false
  else is_prime_helper 3 (sqrt num)

and is_prime_helper (i : int) (limit : int) : bool =
  if i > limit then true
  else if num mod i = 0 then false
  else is_prime_helper (i+2) limit


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given integer is a prime number. *)
