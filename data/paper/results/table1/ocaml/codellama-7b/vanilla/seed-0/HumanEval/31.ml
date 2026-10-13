let rec is_prime (n : int) : bool =
  if n < 2 then false else begin
    let rec is_composite (a : int) : bool =
      if a * a > n then false
      else if n mod a = 0 then true
      else is_composite (a + 1)
    in
    if is_composite 2 then false else true
  end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return true if a given number is prime, and false otherwise. *)
(*     >>> is_prime 6 *)
(*     false *)
(*     >>> is_prime 101 *)
(*     true *)
(*     >>> is_prime 11 *)
(*     true *)
(*     >>> is_prime 13441 *)
(*     true *)
(*     >>> is_prime 61 *)
(*     true *)
(*     >>> is_prime 4 *)
(*     false *)
(*     >>> is_prime 1 *)
(*     false *)
