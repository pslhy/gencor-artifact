let rec magic_square_test (my_matrix : int list list) : bool =
    let rows = List.length my_matrix in
    let cols = List.length (List.hd my_matrix) in
    let check_sums = List.init rows (fun i -> List.sum (List.nth my_matrix (i * cols))) in
    let total = List.fold_right (fun x y -> x + y) (List.concat my_matrix) 0 in
    let target_sum = (cols * (cols * rows + 1)) / 2 in
    let row_cond = List.for_all (fun x -> x = target_sum) check_sums in
    let col_cond = List.for_all (fun i -> List.sum (List.map (fun x -> x !! i) my_matrix) = target_sum) (range(cols)) in
    let diag_cond = List.sum (List.map (fun i -> List.nth my_matrix (i * (cols + 1)) !! i) (range(cols))) = target_sum in
    row_cond && col_cond && diag_cond


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
