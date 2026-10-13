let rec modp (n : int) (p : int) : int =
  match n, p with
  | 0, _ -> 1
  | _, 0 -> 0 (* p should be non-zero *)
  | _ -> let half_result = modp (n / 2) (p) in
    let result = 2 * half_result mod p in
    if n mod 2 = 0 then result else (result + p) mod p


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
