let rec is_not_prime (n : int) : bool = 
  let rec check (divisor : int) : bool = 
    if divisor * divisor > n then true
    else if n mod divisor = 0 then false
    else check (divisor + 1)
  in
  if n <= 1 then false
  else check 2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to identify non-prime numbers. *)
