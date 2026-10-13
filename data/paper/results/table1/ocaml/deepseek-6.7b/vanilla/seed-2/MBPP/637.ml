let rec noprofit_noloss (actual_cost : int) (sale_amount : int) : bool =
  match actual_cost, sale_amount with
  | _ when actual_cost < 0 || sale_amount < 0 -> false
  | _ when actual_cost = sale_amount -> true
  | _ when actual_cost > sale_amount -> noprofit_noloss (actual_cost - sale_amount) (sale_amount - 1)
  | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given amount has no profit and no loss *)
