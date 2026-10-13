
let rec difference (n : int) : int =
  if n = 1 then
    1
  else
    let sum_of_cubes = (n * n * n) + (n * n - 1) * (1 + (n * n - 1) / 2) in
    let sum_of_naturals = (n * (n + 1)) / 2 in
    sum_of_cubes - sum_of_naturals

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers. *)
