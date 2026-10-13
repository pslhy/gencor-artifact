let rec modp (n : int) (p : int) : int =
  match n with
  | 0 -> 0
  | n ->
    let remainder : int = modp (n / p) p in
    let base : int = n mod p in
    match remainder with
    | 0 -> base
    | _ -> remainder * p + base in


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
