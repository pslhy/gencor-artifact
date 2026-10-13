
let rec magic_square_test (my_matrix : int list list) : bool = 
    let n = List.length my_matrix in
    let sum = List.fold_left (+) 0 (List.map List.hd my_matrix) in
    let rec check_row col = 
        if col = n then true 
        else 
            let current_sum = List.fold_left (+) 0 (List.map (List.nth col) my_matrix) in
            if current_sum != sum then false 
            else check_row (col + 1) 
    and check_col row = 
        if row = n then true 
        else 
            let current_sum = List.fold_left (+) 0 (List.map List.nth my_matrix) in
            if current_sum != sum then false 
            else check_col (row + 1) 
    and check_diag1 () = 
        let rec loop i = 
            if i = n then true 
            else 
                let current_sum = List.nth (List.nth my_matrix i) i in
                if current_sum != sum then false 
                else loop (i + 1) 
        in loop 0 
    and check_diag2 () = 
        let rec loop i = 
            if i = n then true 
            else 
                let current_sum = List.nth (List.nth my_matrix (n - i - 1)) i in
                if current_sum != sum then false 
                else loop (i + 1) 
        in loop 0 in
    check_row 0 && check_col 0 && check_diag1 () && check_diag2 ()

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
