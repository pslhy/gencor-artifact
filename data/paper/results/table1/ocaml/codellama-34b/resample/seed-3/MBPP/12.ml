(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort a given matrix in ascending order according to the sum of its rows. *)
let rec sort_matrix (m : int list list) : int list list =
  if m = [] then []
  else
    let (row1, rest) = m in
    let sorted_rest = sort_matrix rest in
    insert_row row1 sorted_rest
and insert_row (row : int list) (sorted_matrix : int list list) : int list list =
  match sorted_matrix with
  | [] -> [row]
  | (first_row, _) :: _ when sum_row row <= sum_row first_row -> row :: sorted_matrix
  | first_row :: rest -> first_row :: insert_row row rest
and sum_row (row : int list) : int =
  List.fold_left (fun acc x -> acc + x) 0 row

