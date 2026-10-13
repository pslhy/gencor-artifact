let rec noprofit_noloss (actual_cost : int) (sale_amount : int) : bool =
    if actual_cost > sale_amount then false
    else if sale_amount = actual_cost then true
    else if sale_amount > 0 then noprofit_noloss (actual_cost - 1) (sale_amount - 1)
    else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given amount has no profit and no loss *)
