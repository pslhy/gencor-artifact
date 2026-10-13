let rec loss_amount (actual_cost : int) (sale_amount : int) : int =
  if sale_amount <= actual_cost then
    0
  else
    let diff = sale_amount - actual_cost in
    diff


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that gives loss amount on a sale if the given amount has loss else return 0. *)
