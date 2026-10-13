
let rec sort_matrix (m : int list list) : int list list =
  match m with
  | [] -> []
  | _ -> let row_sums = List.map (fun row -> List.fold_left (+) 0 row) m in
         let min_index = List.find_opt (fun i -> row_sums.(i) = List.fold_left min Int.max_int row_sums) (List.init (List.length m) (fun i -> i)) in
         match min_index with
         | None -> []
         | Some(i) -> m.(i) :: sort_matrix (List.remove_assoc i m)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
