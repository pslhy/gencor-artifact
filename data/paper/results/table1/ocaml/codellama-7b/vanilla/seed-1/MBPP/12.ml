let rec sort_matrix (m : int list list) : int list list =
    let sum_rows = List.map ~f:(fun x -> List.fold_left ~f:(+) ~init:0 x) m in
    let sorted_sums = List.sort ~cmp:(fun x y -> compare x y) sum_rows in
    List.map ~f:(fun x -> List.sort ~cmp:(fun y z -> compare y z) x) m


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
