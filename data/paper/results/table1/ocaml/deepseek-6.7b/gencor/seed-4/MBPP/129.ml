
let rec magic_square_test (my_matrix : int list list) : bool =
  let size = List.length my_matrix in
  let rec check_rows (my_matrix : int list list) (row_sum : int) : bool =
    match my_matrix with
    | [] -> true
    | hd::tl -> if List.fold_left (fun a b -> a + b) 0 hd = row_sum then check_rows tl row_sum else false
  and check_columns (my_matrix : int list list) (col : int) (col_sum : int) : bool =
    if col = size then true
    else
      if List.fold_left (fun a b -> a + List.nth b col) 0 my_matrix = col_sum then
        check_columns my_matrix (col+1) col_sum
      else false in
  if check_rows my_matrix (List.fold_left (fun a b -> a + b) 0 (List.hd my_matrix)) then
    check_columns my_matrix 0 (List.fold_left (fun a b -> a + b) 0 (List.nth my_matrix 0))
  else false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
