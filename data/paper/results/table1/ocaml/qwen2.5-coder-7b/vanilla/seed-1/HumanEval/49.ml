let rec modp (n : int) (p : int) : int = 
  if n = 0 then 1
  else 
    let rec pow (x : int) (y : int) : int = 
      if y = 0 then 1
      else (x * pow x (y - 1)) mod p in
    let rec mod_mul (a : int) (b : int) (m : int) : int = 
      if b = 0 then 0
      else if b land 1 = 1 then (a + mod_mul a (b lsr 1) m) mod m
      else mod_mul (a lsl 1) (b lsr 1) m in
    mod_mul (pow 2 n) (modp (n / 2) p) p

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
