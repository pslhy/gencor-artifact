let rec magic_square_test (my_matrix : int list list) : bool = 
  let n = List.length my_matrix in
  let rec sum_row row = List.fold_left (+) 0 row in
  let rec sum_col matrix col = fold_left (+) 0 (List.map (fun row -> List.nth row col) matrix) in
  let sum_diag1 = List.fold_left2 (+) 0 (List.mapi (fun i row -> List.nth row i) my_matrix) in
  let sum_diag2 = List.fold_left2 (+) 0 (List.mapi (fun i row -> List.nth row (n-1-i)) my_matrix) in
  let row_sums = List.map sum_row my_matrix in
  let col_sums = List.map (sum_col my_matrix) (List.range 0 n) in
  let all_sums = row_sums @ col_sums @ [sum_diag1; sum_diag2] in
  let target_sum = sum_row (List.hd my_matrix) in
  List.for_all (fun sum -> sum = target_sum) all_sums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
