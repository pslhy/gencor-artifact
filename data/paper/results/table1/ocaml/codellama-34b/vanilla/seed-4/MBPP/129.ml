let rec magic_square_test (my_matrix : int list list) : bool = 
    (* Check if the dimensions are quare and the matrix is populated with numbers from 1 to length(my_matrix) *)
    (* Populates a list with the sum of the rows, columns, and diagonals *)
    let rec init_sums (my_matrix : int list list) : int list =
      let square_len = 
          if(List.length my_matrix = List.length (List.hd my_matrix)) then List.length my_matrix
          else raise (Invalid_argument("Matrix must be square"))
      in
      let rec sum_helper (row : int list) (acc : int) : int =
        if row = [] then acc
        else 
          sum_helper (List.tl row) (acc + (List.hd row))
      in
      let sums = sum_helper (List.hd my_matrix) 0 in
      if (List.length sums) = (square_len * 2) then sums
      else raise (Invalid_argument("Matrix must be populate with numbers from 1 to" + (string_of_int square_len)))
    in

    let rec check_magic (sums : int list) : bool = 
      let num_rows = List.length my_matrix in
      List.fold_left (+) (my_matrix.(0).(0)) sums
     in
     
     magic_square_test (init_sums ([1;2;3],[4;5;6],[7;8;9]))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate whether the matrix is a magic square. *)
