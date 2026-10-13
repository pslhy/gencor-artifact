let rec sort_matrix (m : int list list) : int list list =
  match m with
  | [] -> []
  | _ -> let row_sums = List.map (fun row -> List.fold_left (+) 0 row) m in
         let min_index = List.findi (fun _ i -> i = List.min row_sums) row_sums in
         let min_row = List.nth m min_index in
         min_row :: sort_matrix (List.remove_at min_index m)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
