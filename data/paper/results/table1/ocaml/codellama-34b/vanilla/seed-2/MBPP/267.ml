let rec square_Sum (n : int) : int =
    match n with
    | 0 -> 0
    | n when n > 0 -> n * n + square_Sum (n - 2)
    | _ -> invalid_arg "n must be non-negative"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in an integer n and returns the sum of the squares of the first n odd natural numbers. *)
