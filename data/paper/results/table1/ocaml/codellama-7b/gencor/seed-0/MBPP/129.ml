
let rec magic_square_test (my_matrix : int list list) : bool =
  let row_sums = List.map (fun row -> List.fold_left ( + ) 0 row) my_matrix
  in let col_sums = List.map (fun col -> List.fold_left ( + ) 0 col) (List.map List.map (fun row -> List.nth row 0) my_matrix)
  in let diag_sums = List.map (fun row -> List.fold_left ( + ) 0 row) (List.map List.map (fun row -> List.nth row 0) my_matrix)
  in let diamond_sums = List.map (fun row -> List.fold_left ( + ) 0 row) (List.map List.map (fun row -> List.nth row 1) my_matrix)
  in let all_sums = List.fold_left ( + ) 0 (row_sums @ col_sums @ diag_sums @ diamond_sums)
  in let all_sums = all_sums - 15  (* magic constant *)
  in (all_sums = 0)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
