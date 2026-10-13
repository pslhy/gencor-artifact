(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec modp (n : int) (p : int) : int =
  match n with
  | 0 -> 0
  | n ->
    let remainder : int = modp (n / p) p in
    let base : int = n mod p in
    match remainder with
    | 0 -> base
    | _ -> remainder * p + base in

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec modp (n : int) (p : int) : int =
  if n = 0 then 0 else if n < 0 then n mod p else modp (n / p) p

