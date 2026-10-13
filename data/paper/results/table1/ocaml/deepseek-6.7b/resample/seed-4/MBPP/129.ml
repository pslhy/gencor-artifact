(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
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
        check_columns my_matrix (col+1) row_sum
      else
        false in
  let row_sum = List.fold_left (fun a b -> a + b) 0 (List.nth my_matrix 0) in
  if check_rows my_matrix row_sum then
    let col_sum = List.fold_left (fun a b -> a+ List.nth b 0) 0 my_matrix in
    check_columns my_matrix 1 col_sum
  else
    false ;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:41: Unbound value "row_sum" *)
(*     Hint: Did you mean "col_sum"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec magic_square_test (my_matrix : int list list) : bool =
  let size = List.length my_matrix in
  let row_sum = List.fold_left (fun a b -> a + b) 0 (List.nth my_matrix 0) in
  let rec check_rows (my_matrix : int list list) (row_sum : int) : bool =
    match my_matrix with
    | [] -> true
    | hd::tl -> if List.fold_left (fun a b -> a + b) 0 hd = row_sum then check_rows tl row_sum else false
  and check_columns (my_matrix : int list list) (col : int) (col_sum : int) : bool =
    if col = size then true
    else
      if List.fold_left (fun a b -> a + List.nth b col) 0 my_matrix = col_sum then
        check_columns my_matrix (col+1) row_sum
      else
        false in
  let col_sum = List.fold_left (fun a b -> a+ List.nth b 0) 0 my_matrix in
  check_rows my_matrix row_sum && check_columns my_matrix 1 col_sum

