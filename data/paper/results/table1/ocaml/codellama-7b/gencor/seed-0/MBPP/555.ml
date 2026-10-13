
let rec difference (n : int) : int =
  if n = 0 then 0
  else let sum = (n * (n + 1) * (2 * n + 1)) / 6
       and sum_of_cubes = (n * (n + 1) * (2 * n + 1)) / 3
     in sum - sum_of_cubes

let () =
  assert (difference 1 = 0);
  assert (difference 2 = 1);
  assert (difference 3 = 4);
  assert (difference 4 = 10);
  assert (difference 5 = 17)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers. *)
