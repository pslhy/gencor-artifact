let rec sort_matrix (m : int list list) : int list list =
    match m with
    | [] -> []
    | h::t -> let sorted_m = sort_matrix t in
              let (below, above) = List.partition (fun (x, _) -> (List.fold_right (+) h 0) < (List.fold_right (+) x 0)) sorted_m in
              above @ [h] @ below
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
