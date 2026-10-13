let rec catalan_number (num : int) : int = 
  if num = 0 || num = 1 then 1
  else 
    let rec sum_product (k : int) (acc : int) : int = 
      if k > num then acc
      else sum_product (k + 1) (acc + (catalan_number k * catalan_number (num - k))) 
    in sum_product 0 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which returns nth catalan number. *)
