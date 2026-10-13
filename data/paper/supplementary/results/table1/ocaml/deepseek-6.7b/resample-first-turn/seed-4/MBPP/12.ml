let rec sort_matrix (m : int list list) : int list list =
  match m with
  |[] -> []
  |[h] -> m
  |_ -> let sorted = List.sort (fun a b -> List.fold_left (+) 0 a - List.fold_left (+) 0 b) m in
          let middle = List.length sorted / 2 in
          let (left, right) = (List.take middle sorted, List.drop middle sorted) in
          (sort_matrix left) @ (sort_matrix right)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
