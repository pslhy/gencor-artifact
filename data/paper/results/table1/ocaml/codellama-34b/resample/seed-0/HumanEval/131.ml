(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec digits (n : int) : int =
    if n <= 0 then 1
    else if n mod 2 = 0 then 0
    else digits (n / 2) + 1

