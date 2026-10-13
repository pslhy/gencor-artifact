let rec odd_num_sum (n : int) : int =
    match n with
    | 0 -> 0
    | n when n > 0 -> n * n * n * n + odd_num_sum(n - 2)
    | _ -> raise (Invalid_argument "n should be a positive integer")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of fourth power of first n odd natural numbers. *)
