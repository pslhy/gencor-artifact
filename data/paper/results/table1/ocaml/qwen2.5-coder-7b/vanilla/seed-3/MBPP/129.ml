let rec magic_square_test (my_matrix : int list list) : bool = 
  let n = List.length my_matrix in
  let sum = List.fold_left (+) 0 (List.map List.hd my_matrix) in
  let check_rows my_matrix = 
    List.for_all (fun row -> List.fold_left (+) 0 row = sum) my_matrix in
  let check_cols my_matrix = 
    let cols = List.init n (fun i -> List.map (fun row -> row.(i)) my_matrix) in
    List.for_all (fun col -> List.fold_left (+) 0 col = sum) cols in
  let check_diagonals my_matrix = 
    let diag1 = List.mapi (fun i row -> row.(i)) my_matrix in
    let diag2 = List.mapi (fun i row -> row.(n - 1 - i)) my_matrix in
    (List.fold_left (+) 0 diag1 = sum) && (List.fold_left (+) 0 diag2 = sum) in
  check_rows my_matrix && check_cols my_matrix && check_diagonals my_matrix;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
