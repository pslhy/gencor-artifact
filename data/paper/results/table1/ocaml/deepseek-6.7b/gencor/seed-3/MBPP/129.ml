
let rec magic_square_test (my_matrix : int list list) : bool =
  match my_matrix with
  | [] -> true
  | h::t ->
     if List.length h <> List.length my_matrix then false
     else
       let row_sum = List.fold_left (+) 0 h in
       let col_sums = List.map (List.fold_left (+) 0) (List.map List.hd t) in
       let other_sums = magic_square_test (List.map List.tl t) in
       row_sum = List.fold_left (+) 0 col_sums && row_sum = List.hd col_sums && other_sums

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
