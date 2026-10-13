let rec sum_Of_product (n : int) : int =
    match n with
    | 0 -> 1
    | n -> (n * (n + 1) * (n + 2)) + sum_Of_product (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the product of consecutive binomial co-efficients. *)
