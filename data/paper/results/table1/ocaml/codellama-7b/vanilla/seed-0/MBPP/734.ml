let rec sum_Of_Subarray_Prod (arr : int list) : int =
  match arr with
  | [] -> 0
  | h :: t -> List.fold_left (fun acc x -> acc + (x * h)) 0 t + sum_Of_Subarray_Prod t


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
