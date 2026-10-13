
let rec magic_square_test (my_matrix : int list list) : bool = 
  let size = List.length my_matrix in
  let sum_of_first_row = List.fold_left (+) 0 (List.hd my_matrix) in
  let check_row row = List.fold_left (+) 0 row = sum_of_first_row in
  let check_column i = List.fold_left (+) 0 (List.map (fun row -> List.nth row i) my_matrix) = sum_of_first_row in
  let check_diagonals = 
    List.fold_left (+) 0 (List.mapi (fun i row -> List.nth row i) my_matrix) = sum_of_first_row 
    && List.fold_left (+) 0 (List.mapi (fun i row -> List.nth row (size - i - 1)) my_matrix) = sum_of_first_row 
  in
  List.for_all check_row (List.tl my_matrix) 
  && List.for_all check_column (Array.to_list (Array.init size (fun i -> i))) 
  && check_diagonals

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
