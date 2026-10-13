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
  let sum_of_first_row = List.fold_left (+) 0 (List.hd my_matrix) in
  let check_row row = List.fold_left (+) 0 row = sum_of_first_row in
  let check_column i = List.fold_left (+) 0 (List.map (fun row -> List.nth row i) my_matrix) = sum_of_first_row in
  let check_diagonals = 
    List.fold_left (+) 0 (List.mapi (fun i row -> List.nth row i) my_matrix) = sum_of_first_row 
    && List.fold_left (+) 0 (List.mapi (fun i row -> List.nth row (size - i - 1)) my_matrix) = sum_of_first_row 
  in
  List.for_all check_row (List.tail my_matrix) 
  && List.for_all check_column (0 -- (size - 1)) 
  && check_diagonals

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:27: Unbound value "List.tail" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec magic_square_test (my_matrix : int list list) : bool = 
  let size = List.length my_matrix in
  let sum_of_first_row = List.fold_left (+) 0 (List.hd my_matrix) in
  let check_row row = List.fold_left (+) 0 row = sum_of_first_row in
  let check_column i = List.fold_left (+) 0 (List.map (fun row -> List.nth row i) my_matrix) = sum_of_first_row in
  let check_diagonals = 
    List.fold_left (+) 0 (List.mapi (fun i row -> List.nth row i) my_matrix) = sum_of_first_row 
    && List.fold_left (+) 0 (List.mapi (fun i row -> List.nth row (size - i - 1)) my_matrix) = sum_of_first_row 
  in
  List.for_all check_row (my_matrix |> List.tl)
  && List.for_all check_column (0 -- (size - 1)) 
  && check_diagonals

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:35: Unbound value "(--)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec magic_square_test (my_matrix : int list list) : bool = 
  let size = List.length my_matrix in
  let sum_of_first_row = List.fold_left (+) 0 (List.hd my_matrix) in
  let check_row row = List.fold_left (+) 0 row = sum_of_first_row in
  let check_column i = List.fold_left (+) 0 (List.map (fun row -> List.nth row i) my_matrix) = sum_of_first_row in
  let check_diagonals = 
    List.fold_left (+) 0 (List.mapi (fun i row -> List.nth row i) my_matrix) = sum_of_first_row 
    && List.fold_left (+) 0 (List.mapi (fun i row -> List.nth row (size - i - 1)) my_matrix) = sum_of_first_row 
  in
  List.for_all check_row (my_matrix |> List.tl)
  && List.for_all (fun i -> check_column i) (0 -- (size - 1)) 
  && check_diagonals
``
(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec magic_square_test (my_matrix : int list list) : bool = 
  let size = List.length my_matrix in
  let sum_of_first_row = List.fold_left (+) 0 (List.hd my_matrix) in
  let check_row row = List.fold_left (+) 0 row = sum_of_first_row in
  let check_column i = List.fold_left (+) 0 (List.map (fun row -> List.nth row i) my_matrix) = sum_of_first_row in
  let check_diagonals = 
    List.fold_left (+) 0 (List.mapi (fun i row -> List.nth row i) my_matrix) = sum_of_first_row 
    && List.fold_left (+) 0 (List.mapi (fun i row -> List.nth row (size - i - 1)) my_matrix) = sum_of_first_row 
  in
  List.for_all check_row (my_matrix |> List.tl)
  && List.for_all (fun i -> check_column i) (0 to (size - 1)) 
  && check_diagonals

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:48: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec magic_square_test (my_matrix : int list list) : bool = 
  let size = List.length my_matrix in
  let sum_of_first_row = List.fold_left (+) 0 (List.hd my_matrix) in
  let check_row row = List.fold_left (+) 0 row = sum_of_first_row in
  let check_column i = List.fold_left (+) 0 (List.map (fun row -> List.nth row i) my_matrix) = sum_of_first_row in
  let check_diagonals = 
    List.fold_left (+) 0 (List.mapi (fun i row -> List.nth row i) my_matrix) = sum_of_first_row 
    && List.fold_left (+) 0 (List.mapi (fun i row -> List.nth row (size - i - 1)) my_matrix) = sum_of_first_row 
  in
  List.for_all check_row (my_matrix |> List.tl)
  && List.for_all (fun i -> check_column i) (0 to (size - 1))
  && check_diagonals

