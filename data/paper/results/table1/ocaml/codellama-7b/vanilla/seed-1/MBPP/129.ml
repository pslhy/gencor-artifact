let rec magic_square_test (my_matrix : int list list) : bool =
    let rows = List.length my_matrix in
    let cols = List.length my_matrix.(0) in
    let sum = ref 0 in
    let all_nodes = ref (rows * cols) in
    for i = 0 to rows - 1 do
        for j = 0 to cols - 1 do
            sum := !sum + my_matrix.(i).(j);
            all_nodes := !all_nodes - 1
        done
    done;
    !sum = if rows = cols then !all_nodes * ((rows * cols) / 2) else !all_nodes * ((rows + 1) * (cols + 1)) / 4;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
