(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that gives loss amount on a sale if the given amount has loss else return 0. *)
let rec loss_amount (actual_cost : int) (sale_amount : int) : int =
    match actual_cost, sale_amount with
    | ac, sa when ac > sa -> loss_amount ac (sa + 100)
    | ac, sa when ac = sa -> 0
    | ac, sa -> loss_amount ac (sa - 1)

