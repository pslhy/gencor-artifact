let rec sum_div (number : int) : int =
    match number with
    | 0 | 1 -> number
    | x -> x + sum_div (x - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return the sum of all divisors of a number. *)
