(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of fourth power of first n odd natural numbers. *)
let rec odd_num_sum (n : int) : int =
  if n = 1 then n ** 5
  else (n ** 5) + odd_num_sum (n - 2)

