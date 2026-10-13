let rec sort_matrix (m : int list list) : int list list = 
  let sum_row row = List.fold_left (+) 0 row in
  List.sort (fun a b -> compare (sum_row a) (sum_row b)) m


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
