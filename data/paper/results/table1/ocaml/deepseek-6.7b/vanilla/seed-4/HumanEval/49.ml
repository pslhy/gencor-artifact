let rec modp (n : int) (p : int) : int =
  if p = 0 then
    1
  else if n = 0 then
    0
  else
    let half_mod = modp (n lsr 1) p in 
    let half_sqr =  (half_mod * half_mod) mod p in 
    if n land 1 = 1 then
      (2 * half_sqr) mod p
    else
      half_sqr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return 2^n modulo p (be aware of numerics). *)
(*     >>> modp 3 5 *)
(*     3 *)
(*     >>> modp 1101 101 *)
(*     2 *)
(*     >>> modp 0 101 *)
(*     1 *)
(*     >>> modp 3 11 *)
(*     8 *)
(*     >>> modp 100 101 *)
(*     1 *)
