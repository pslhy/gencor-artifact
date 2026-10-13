let rec difference (n : int) : int =
  if n = 1 then
    1
  else
    let sum_of_cubes = (n * n * n) + (sum_of_cubes (n - 1)) in
    let sum_of_ints = (n * (n + 1)) / 2 + (sum_of_ints (n - 1)) in
    sum_of_cubes - sum_of_ints


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers. *)
