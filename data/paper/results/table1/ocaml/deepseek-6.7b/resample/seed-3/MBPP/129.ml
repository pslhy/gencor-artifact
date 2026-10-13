(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
let rec magic_square_test (my_matrix : int list list) : bool =
  match my_matrix with
  | [] -> true
  | h::t ->
     if List.length h <> List.length my_matrix then false
     else
       let row_sum = List.fold_left (+) 0 h in
       let col_sums = List.map (List.fold_left (+) 0) (columns my_matrix) in
       if List.exists ((<>) row_sum) col_sums then false
       else magic_square_test t;;

let columns (my_matrix : 'a list list) : 'a list list =
  let rec helper (n : int) (my_matrix : 'a list list) : 'a list list =
    if n = 0 then []
    else
      let col = List.map (List.nth) (List.map (fun x -> x n) my_matrix) in
      col :: helper (n - 1) my_matrix in
  helper (List.length (List.hd my_matrix)) my_matrix;;

let my_matrix = [[2;7;6];[9;5;1];[4;3;8]];;
let result = magic_square_test my_matrix;;
Printf.printf "%b" result;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:56: Unbound value "columns" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec magic_square_test (my_matrix : int list list) : bool =
  let rec get_cols (col : int) (matrix : int list list) : int list =
    if col = List.length (List.hd matrix) then []
    else List.map (List.nth col) matrix :: get_cols (col + 1) matrix
  in
  let row_sums = List.map List.sum my_matrix in
  let col_sums = get_cols 0 my_matrix in
  let all_equal xs =
    match xs with
    | [] -> true
    | _ :: t -> List.for_all ((=) (List.hd xs)) t
  in
  all_equal row_sums && all_equal col_sums;;

let my_matrix = [[2;7;6];[9;5;1];[4;3;8]];;
let result = magic_square_test my_matrix;;
Printf.printf "%b\n" result;;

