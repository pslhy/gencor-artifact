(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given amount has no profit and no loss *)
let rec noprofit_noloss (actual_cost : int) (sale_amount : int) : bool = 
    (*
     * This function takes the actual cost and sale amount of an item
     * as parameters and returns whether the sale amount is no greater
     * than the actual cost.
     *)
    if sale_amount <= actual_cost then true else false

