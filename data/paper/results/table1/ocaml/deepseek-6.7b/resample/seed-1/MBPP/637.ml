(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given amount has no profit and no loss *)
let rec noprofit_noloss (actual_cost : int) (sale_amount : int) : bool =
  match actual_cost = sale_amount with
  | true -> true
  | false -> match actual_cost < sale_amount with
              | true -> if actual_cost = sale_amount / 2 then false 
                        else if sale_amount % 2 = 0 then noprofit_noloss actual_cost (sale_amount / 2) 
                        else noprofit_noloss actual_cost (sale_amount - 1)
              | false -> false;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:45: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec noprofit_noloss (actual_cost : int) (sale_amount : int) : bool =
  match actual_cost = sale_amount with
  | true -> true
  | false -> match sale_amount < actual_cost with
              | true -> if actual_cost = sale_amount / 2 then false 
                        else if sale_amount % 2 = 0 then noprofit_noloss actual_cost (sale_amount / 2) 
                        else noprofit_noloss actual_cost (sale_amount - 1)
              | false -> false;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:45: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec noprofit_noloss (actual_cost : int) (sale_amount : int) : bool =
  match actual_cost = sale_amount with
  | true -> true
  | false -> match sale_amount < actual_cost with
              | true -> if actual_cost = sale_amount / 2 then false 
                        else if sale_amount mod 2 = 0 then noprofit_noloss actual_cost (sale_amount / 2) 
                        else noprofit_noloss actual_cost (sale_amount - 1)
              | false -> false;;

