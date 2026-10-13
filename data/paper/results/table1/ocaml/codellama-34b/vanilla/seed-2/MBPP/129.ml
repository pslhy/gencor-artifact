let rec magic_square_test (my_matrix : int list list) : bool =
    let n = List.length my_matrix in
    let m = List.length (List.hd my_matrix) in
    if n != m then false
    else
        let sum_row = List.map (fun x -> List.sum x) my_matrix in
        let sum_row = List.filter (fun x -> x != 0) sum_row in
        if sum_row != [] then ()
        else
            let sum_col = List.map (fun x -> List.sum x) (List.transpose my_matrix) in
            List.fold_left (fun acc x -> if acc = x then true else false) true sum_col 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
