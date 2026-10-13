let rec magic_square_test (my_matrix : int list list) : bool = 
  let n = List.length my_matrix in
  let rec sum_row row = List.fold_left (+) 0 row in
  let row_sums = List.map sum_row my_matrix in
  let sum_col col = List.fold_left (+) 0 (List.map (fun row -> List.nth row col) my_matrix) in
  let col_sums = List.map sum_col (List.init n (fun x -> x)) in
  let sum_diag1 = List.fold_left (+) 0 (List.map2 (fun x y -> x + y) my_matrix (List.rev my_matrix)) in
  let sum_diag2 = List.fold_left (+) 0 (List.map2 (fun x y -> x + y) my_matrix (List.rev (List.map (fun row -> List.rev row) my_matrix))) in
  let all_sums = row_sums @ col_sums in
  let all_match = List.for_all (fun x -> x = List.hd all_sums) all_sums in
  all_match && (sum_diag1 = List.hd all_sums) && (sum_diag2 = List.hd all_sums)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
