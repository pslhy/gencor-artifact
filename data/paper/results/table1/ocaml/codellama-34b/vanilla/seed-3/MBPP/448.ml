let rec cal_sum (n : int) : int =
  if n = 1 || n = 5 then 0
  else if n = 2 then 1
  else if n = 3 then 2
  else if n = 4 then 5
  else cal_sum((n + 1) / 2) + (-1) pow (n - 3) * cal_sum(n - 1 / 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the sum of perrin numbers. *)
