
let rec magic_square_test (my_matrix : int list list) : bool =
    let rows = List.length my_matrix in
    let cols = List.length (List.hd my_matrix) in
    let check_sums = List.init rows (fun i -> List.nth my_matrix i)
                     |> List.map (fun row -> List.fold_right (fun x y -> x + y) row 0)
    in
    let row = rows / 2 in
    let col = cols / 2 in
    if row = col then check_sums = List.init rows (fun i -> List.nth check_sums i)
    else if row > 0 && col > 0 then
        let valuations = List.init (2 * rows) (fun i -> List.nth my_matrix i)
                         |> List.map (fun row -> List.nth row row)
        in
        let forward_diags = List.init (2 * rows) (fun i -> List.nth my_matrix i)
                            |> List.map (fun row -> List.nth row (row + 1))
        in
        let backward_diags = List.init (2 * rows) (fun i -> List.nth my_matrix i)
                             |> List.map (fun row -> List.nth row (row - 1))
        in
        let diag_sum = List.fold_right (fun x y -> x + y) forward_diags 0 in
        let antidiag_sum = List.fold_right (fun x y -> x + y) backward_diags 0 in
        check_sums = List.init rows (fun i -> List.nth check_sums i) && valuations = List.init rows (fun i -> row) && diag_sum = antidiag_sum
    else false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
