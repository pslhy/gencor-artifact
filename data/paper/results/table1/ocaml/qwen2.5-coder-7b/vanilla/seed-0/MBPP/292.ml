let rec find (n : int) (m : int) : int = 
  if m <= 0 then invalid_arg "denominator must be greater than 0"
  else if n < m then 0
  else 1 + find (n - m) m


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find quotient of two numbers (rounded down to the nearest integer). *)
