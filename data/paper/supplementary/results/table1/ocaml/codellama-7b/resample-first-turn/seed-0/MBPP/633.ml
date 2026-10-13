let rec pair_xor_Sum (arr : int list) (n : int) : int =
  match arr with
  | [] -> 0
  | h :: t -> (h lxor n) + pair_xor_Sum t n


let sum_xor_all_pairs (arr : int list) : int =
    Array.reduce ( + ) @@ Array.of_list (List.map (pair_xor_Sum arr) arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of xor of all pairs of numbers in the given list. *)
