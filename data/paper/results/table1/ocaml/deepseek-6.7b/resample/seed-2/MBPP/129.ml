(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
let rec magic_square_test (my_matrix : int list list) : bool =
  let sum = List.fold_left (+) 0 (List.hd my_matrix) in
  let row_test row = List.fold_left (+) 0 row = sum in
  let col_test col = List.fold_left (+) 0 (List.map List.hd col) = sum in
  match my_matrix with
  | [] -> true
  | hd::tl -> if (row_test hd && Util.all col_test (Util.transpose my_matrix))
               then magic_square_test tl 
               else false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:34: Unbound module "Util" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec magic_square_test (my_matrix : int list list) : bool =
  let sum = List.fold_left (+) 0 (List.hd my_matrix) in
  let row_test row = List.fold_left (+) 0 row = sum in
  let col_test matrix col = List.fold_left (+) 0 (List.map (List.nth col) (List.map List.hd matrix)) = sum in
  match my_matrix with
  | [] -> true
  | hd::tl -> if (row_test hd && List.for_all (col_test my_matrix) (List.init (List.length hd) (fun i -> i)))
               then magic_square_test tl 
               else false

