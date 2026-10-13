let rec pair_xor_Sum (arr : int list) (n : int) : int =
  match arr with
  |[] -> 0
  |x::xs -> List.fold_left (fun acc y -> acc + (x lxor y)) 0 arr + pair_xor_Sum xs (n-1)

let sum_xor_pairs arr =
  pair_xor_Sum arr (List.length arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of xor of all pairs of numbers in the given list. *)
