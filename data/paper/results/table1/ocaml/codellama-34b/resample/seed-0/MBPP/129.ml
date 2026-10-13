(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
let rec magic_square_test (my_matrix : int list list) : bool =
    (* Calculate the sums of all rows and columns and compare them to the center value *)
    let center_value = my_matrix.(0).(0) in
    let row_sums = List.map (fun row -> List.fold_left ( + ) 0 row) my_matrix in
    let col_sums = List.map (fun col -> List.fold_left ( + ) 0 (List.transpose my_matrix).(col)) my_matrix in
    List.for_all (fun x -> x = center_value) (row_sums @ col_sums)

