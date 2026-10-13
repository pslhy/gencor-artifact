let rec sum (a : int) (b : int) : int =
    match a with
    | 0 -> 0
    | n when n > b -> sum (a - b) b
    | n -> n + sum (a - n) b


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
