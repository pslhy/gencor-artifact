let rec difference (n : int) : int = 
  let sum_of_squares = (n * (n + 1) / 2) * (2 * n + 1) / 3 in
  let cube_sum = (n * (n + 1) / 2) ** 3 in
  cube_sum - sum_of_squares


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers. *)
