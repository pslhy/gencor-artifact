
let rec magic_square_test (my_matrix : int list list) : bool = 
    (* Check if matrix dimensions are quare and size is odd *)
    if (List.length my_matrix = List.length (List.hd my_matrix)) && (List.length my_matrix mod 2 = 1) then
        (* Check if sum of rows, columns, and diagonals are equal *)
        let square_sum = 
            (ref (List.hd (List.map (fun row -> List.fold_left (+) 0 row) my_matrix))
                : int ref) in
        let check_column j =
            let column_sum = ref 0 in
            for i = 0 to (List.length my_matrix / 2) - 1 do
                column_sum := !column_sum + List.nth (List.nth my_matrix i) j;
            done;
            !square_sum := !square_sum + !column_sum;
        in
        let check_diagonal d =
            let diag_sum = ref 0 in
            for i = 0 to (List.length my_matrix / 2) - 1 do
                diag_sum := !diag_sum + List.nth (List.nth my_matrix i) (i + d);
            done;
            !square_sum := !square_sum + !diag_sum;
        in
        let check_diagonal' d =
            let diag_sum = ref 0 in
            for i = 0 to (List.length my_matrix / 2) - 1 do
                diag_sum := !diag_sum + List.nth (List.nth my_matrix i) (List.length my_matrix - 1 - i + d);
            done;
            !square_sum := !square_sum + !diag_sum;
        in
        check_column (List.length my_matrix / 2);
        check_diagonal 0;
        check_diagonal' (List.length my_matrix / 2);
        !square_sum mod 10 = 0
    else
        false
in
magic_square_test [ [1; 2; 3]; [4; 5; 6]; [7; 8; 9] ]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
