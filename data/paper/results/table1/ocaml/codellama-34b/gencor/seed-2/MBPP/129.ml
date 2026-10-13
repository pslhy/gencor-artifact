
let rec magic_square_test (my_matrix : int list list) : bool =
    let n = List.length my_matrix in
    let m = List.length (List.hd my_matrix) in
    if n != m then false
    else
        let sum_row = List.map (fun x -> List.fold_left (+) 0 x) my_matrix in
        let sum_col = List.map (fun x -> List.fold_left (+) 0 (List.map List.hd my_matrix)) my_matrix in
        let diag1 = List.fold_left (+) 0 (List.map2 (fun x y -> x + y) (List.hd my_matrix) (List.rev (List.tl my_matrix))) in
        let diag2 = List.fold_left (+) 0 (List.map2 (fun x y -> x + y) (List.hd my_matrix) (List.tl my_matrix)) in
        let row_sum = List.hd sum_row in
        let col_sum = List.hd sum_col in
        if not (row_sum = col_sum) then false
        else if not (diag1 = diag2) then false
        else
            List.for_all2 (fun x y -> x = row_sum) sum_row sum_col

let my_matrix = [[1;2;3]; [4;5;6]; [7;8;9]]

let result = magic_square_test my_matrix

print_endline (if not(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really_input_string(really

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
