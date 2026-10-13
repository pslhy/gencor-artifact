let rec swap_numbers (a : int) (b : int) : int list =
    match a with
    | 0 -> [b]
    | a -> b :: swap_numbers (a - 1) b


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in two numbers and returns a list with the second number and then the first number. *)
