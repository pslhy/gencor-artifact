let rec noprofit_noloss (actual_cost : int) (sale_amount : int) : bool =
  if actual_cost = sale_amount then
    true
  else if actual_cost < sale_amount then
    noprofit_noloss actual_cost (sale_amount - actual_cost)
  else
    false

let check_price (actual_cost : int) (sale_amount : int) : unit =
  if not (noprofit_noloss actual_cost sale_amount) then
    failwith "Profit or Loss"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given amount has no profit and no loss *)
