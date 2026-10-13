let rec digits (n : int) : int =
  match n with
  | 0 -> 0
  | _ ->
     let last_digit = n mod 10 in
     let rest_digits = n / 10 in
     if last_digit mod 2 = 1 then last_digit * digits rest_digits
     else digits rest_digits;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the product of the odd digits. *)
(*     Return 0 if all digits are even. *)
(*     For example: *)
(*     >>> digits 1 *)
(*     1 *)
(*     >>> digits 4 *)
(*     0 *)
(*     >>> digits 235 *)
(*     15 *)
