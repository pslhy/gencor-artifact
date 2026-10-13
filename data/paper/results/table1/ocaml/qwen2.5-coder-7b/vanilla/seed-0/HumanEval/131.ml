let rec digits (n : int) : int = 
  let rec helper n prod =
    if n = 0 then prod
    else
      let digit = n mod 10 in
      let new_prod = if digit mod 2 <> 0 then prod * digit else prod in
      helper (n / 10) new_prod
  in
  helper n 1


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
