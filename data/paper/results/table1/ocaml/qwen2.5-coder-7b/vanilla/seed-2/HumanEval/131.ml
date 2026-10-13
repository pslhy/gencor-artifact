let rec digits (n : int) : int = 
    let rec product_of_odds n prod =
        if n = 0 then prod
        else if n mod 2 <> 0 then product_of_odds (n / 10) (prod * (n mod 10))
        else product_of_odds (n / 10) prod
    in
    if product_of_odds n 1 = 1 then 0 else product_of_odds n 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the product of the odd digits. *)
(*     Return 0 if all digits are even. *)
(*     For example: *)
(*     >>> digits 1 *)
(*     1 *)
(*     >>> digits 4 *)
(*     0 *)
(*     >>> digits 235 *)
(*     15 *)
