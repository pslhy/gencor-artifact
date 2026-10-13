let rec difference (n : int) : int =
  let sum_of_cubes = sum_of_cubes n in
  let sum_of_numbers = sum_of_numbers n in
  sum_of_cubes - sum_of_numbers

and sum_of_cubes (n : int) : int =
  List.fold_left ( + ) 0 (List.map (fun x -> x * x * x) (List.init n succ))

and sum_of_numbers (n : int) : int =
  List.fold_left ( + ) 0 (List.init n succ)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers. *)
