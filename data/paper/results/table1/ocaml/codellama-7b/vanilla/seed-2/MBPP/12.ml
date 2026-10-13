let rec sort_matrix (m : int list list) : int list list =
  match m with
  | [] -> []
  | _ ->
    let sum_row i = List.fold_left (+) 0 (List.nth m i) in
    List.sort ~compare:(fun i j -> compare (sum_row i) (sum_row j)) [0; m.length - 1];
    sort_matrix m


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
