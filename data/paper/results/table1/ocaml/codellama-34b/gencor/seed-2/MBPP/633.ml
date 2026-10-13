
let rec pair_xor_Sum (arr : int list) (n : int) : int =
    match n with
    | 0 -> 0
    | n -> if n mod 2 = 0 then arr.(n / 2 - 1) + arr.(n / 2)
           else pair_xor_Sum arr (n / 2 - 1) + arr.(n / 2) + arr.(n / 2 + 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of xor of all pairs of numbers in the given list. *)
