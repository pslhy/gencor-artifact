let rec magic_square_test (my_matrix : int list list) : bool =
  match my_matrix with
  | [] -> true
  | head::tail ->
    let row_sum = List.fold_left (+) 0 head in
    let all_rows_same = List.for_all (fun row -> List.fold_left (+) 0 row = row_sum) my_matrix in
    let col_sums = List.init (List.length head) (fun i -> List.fold_left (fun a b -> a + List.nth b i) 0 my_matrix) in
    let all_cols_same = List.for_all (fun sum -> sum = row_sum) col_sums in
    let diag1 = List.map2 (fun a b -> a + b) (List.combine head (List.tl tail)) (List.combine (List.tl head) tail) in
    let diag1_sum = List.fold_left (+) 0 diag1 in
    let diag2 = List.map2 (fun a b -> a + b) (List.combine (List.rev_map List.rev head) (List.tl (List.rev tail))) (List.combine (List.tl (List.rev head)) (List.rev tail)) in
    let diag2_sum = List.fold_left (+) 0 diag2 in
    let is_diag_same = diag1_sum = row_sum && diag2_sum = row_sum in
    all_rows_same && all_cols_same && is_diag_same


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
