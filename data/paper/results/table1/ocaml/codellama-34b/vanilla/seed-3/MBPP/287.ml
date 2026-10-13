let rec square_Sum (n : int) : int =
  if n = 1 then n * n
  else (n - 1) * (n - 1) + n * n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer n and returns the sum of squares of first n even natural numbers. *)
